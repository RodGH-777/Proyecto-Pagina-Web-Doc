param(
  [string]$Src,
  [string]$OutDir,
  [switch]$Preview
)

Add-Type -AssemblyName System.Drawing
Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @"
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public static class BoneMask {
    // Region = list of ellipses/rects in image pixels. A pixel is highlighted when it lies in the
    // region AND it is bone (differs from the white background). The result follows the real bone contour.
    public static Bitmap Build(Bitmap src, int[][] rects, int[][] ellipses, int[][] exclude, Color tint) {
        int w = src.Width, h = src.Height;
        var srcData = src.LockBits(new Rectangle(0, 0, w, h), ImageLockMode.ReadOnly, PixelFormat.Format24bppRgb);
        byte[] sp = new byte[srcData.Stride * h];
        Marshal.Copy(srcData.Scan0, sp, 0, sp.Length);
        int sStride = srcData.Stride;
        src.UnlockBits(srcData);

        var dst = new Bitmap(w, h, PixelFormat.Format32bppArgb);
        var dstData = dst.LockBits(new Rectangle(0, 0, w, h), ImageLockMode.WriteOnly, PixelFormat.Format32bppArgb);
        byte[] dp = new byte[dstData.Stride * h];
        int dStride = dstData.Stride;

        for (int y = 0; y < h; y++) {
            for (int x = 0; x < w; x++) {
                if (!InRegion(x, y, rects, ellipses) || InRects(x, y, exclude)) continue;
                int i = y * sStride + x * 3;
                int b = sp[i], g = sp[i + 1], r = sp[i + 2];
                int mn = Math.Min(r, Math.Min(g, b));
                double d = 255 - mn;
                double a = (d - 8) / 26.0;
                if (a <= 0) continue;
                if (a > 1) a = 1;
                int o = y * dStride + x * 4;
                dp[o] = tint.B; dp[o + 1] = tint.G; dp[o + 2] = tint.R; dp[o + 3] = (byte)(a * 255);
            }
        }
        Marshal.Copy(dp, 0, dstData.Scan0, dp.Length);
        dst.UnlockBits(dstData);
        return dst;
    }

    static bool InRects(int x, int y, int[][] rects) {
        if (rects == null) return false;
        foreach (var r in rects) if (x >= r[0] && x <= r[2] && y >= r[1] && y <= r[3]) return true;
        return false;
    }

    static bool InRegion(int x, int y, int[][] rects, int[][] ellipses) {
        if (InRects(x, y, rects)) return true;
        if (ellipses != null) foreach (var e in ellipses) {
            double dx = (x - e[0]) / (double)e[2], dy = (y - e[1]) / (double)e[3];
            if (dx * dx + dy * dy <= 1) return true;
        }
        return false;
    }
}
"@

# Regiones en píxeles de la imagen original (704x1490). rects = [x1,y1,x2,y2]; ellipses = [cx,cy,rx,ry]
# Cada lista va como texto "a,b,c,d;e,f,g,h" para evitar que PowerShell aplane los arreglos de un solo elemento
$regions = [ordered]@{
  hombro  = @{ rects = ''; ellipses = '226,303,46,44;500,303,46,44'; exclude = '252,296,470,360' }
  columna = @{ rects = '338,192,392,292;338,440,394,640;326,628,404,712'; ellipses = ''; exclude = '' }
  codo    = @{ rects = '88,500,232,885;494,500,640,885'; ellipses = ''; exclude = '' }
  cadera  = @{ rects = '242,600,496,775'; ellipses = ''; exclude = '326,586,404,712' }
  rodilla = @{ rects = '236,985,322,1120;404,985,490,1120'; ellipses = ''; exclude = '' }
  tobillo = @{ rects = '200,1318,315,1460;420,1318,530,1460'; ellipses = ''; exclude = '' }
}

$photo = [System.Drawing.Bitmap]::FromFile($Src)
$tint = [System.Drawing.Color]::FromArgb(255, 20, 184, 166)
New-Item -ItemType Directory -Force $OutDir | Out-Null

foreach ($name in $regions.Keys) {
  $r = $regions[$name]
  $toArr = {
    param([string]$spec)
    if ([string]::IsNullOrWhiteSpace($spec)) { return $null }
    $parts = $spec.Split(';')
    $out = New-Object 'int[][]' $parts.Length
    for ($k = 0; $k -lt $parts.Length; $k++) { $out[$k] = [int[]]($parts[$k].Split(',')) }
    return ,$out
  }
  $mask = [BoneMask]::Build($photo, (& $toArr $r.rects), (& $toArr $r.ellipses), (& $toArr $r.exclude), $tint)
  $mask.Save((Join-Path $OutDir "$name.png"), [System.Drawing.Imaging.ImageFormat]::Png)
  $mask.Dispose()
}

if ($Preview) {
  # Hoja de control: cada región superpuesta sobre la foto, lado a lado
  $cols = $regions.Count
  $scale = 0.5
  $tw = [int]($photo.Width * $scale); $th = [int]($photo.Height * $scale)
  $sheet = New-Object System.Drawing.Bitmap ($tw * $cols), $th
  $g = [System.Drawing.Graphics]::FromImage($sheet)
  $g.Clear([System.Drawing.Color]::White)
  $i = 0
  foreach ($name in $regions.Keys) {
    $g.DrawImage($photo, $i * $tw, 0, $tw, $th)
    $ov = [System.Drawing.Image]::FromFile((Join-Path $OutDir "$name.png"))
    $g.DrawImage($ov, $i * $tw, 0, $tw, $th)
    $ov.Dispose()
    $i++
  }
  $g.Dispose()
  $sheet.Save((Join-Path (Split-Path $OutDir) "bone-preview.png"), [System.Drawing.Imaging.ImageFormat]::Png)
  $sheet.Dispose()
}
$photo.Dispose()
Get-ChildItem $OutDir | Select-Object Name, Length
