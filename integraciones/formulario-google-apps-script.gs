/**
 * Recibe las solicitudes del formulario de contacto del sitio, las guarda en esta hoja
 * de cálculo y envía un correo de aviso.
 *
 * Cómo publicarlo (unos 5 minutos):
 *  1. Crea una hoja de cálculo nueva en Google Sheets (por ejemplo "Solicitudes de cita").
 *  2. En la hoja: Extensiones > Apps Script. Borra lo que aparece y pega este archivo completo. Guarda.
 *  3. Implementar > Nueva implementación > tipo "Aplicación web".
 *       - Ejecutar como: Yo
 *       - Quién tiene acceso: Cualquier usuario
 *     Autoriza los permisos que pide Google (hoja de cálculo y envío de correo).
 *  4. Copia la "URL de la aplicación web" (termina en /exec) y pégala en index.html,
 *     en la constante FORM_ENDPOINT.
 *
 * El aviso llega a la cuenta de Google que publica el script. Para enviarlo a otra
 * dirección (por ejemplo, la secretaria), escríbela en NOTIFY_EMAIL.
 * Si cambias este código después, publica de nuevo: Implementar > Gestionar implementaciones > Editar > Nueva versión.
 */

const NOTIFY_EMAIL = '';
const SHEET_NAME = 'Solicitudes';
const TIMEZONE = 'America/El_Salvador';

const FIELDS = [
  ['nombre', 'Nombre'],
  ['telefono', 'Teléfono'],
  ['correo', 'Correo'],
  ['motivo', 'Motivo de consulta'],
  ['fecha', 'Fecha preferida'],
  ['cobertura', 'Aseguradora / privada'],
  ['mensaje', 'Mensaje o síntomas'],
];

function doPost(e) {
  try {
    const data = JSON.parse(e.postData.contents);

    // Campo trampa: los bots lo llenan, las personas no lo ven. Se responde "ok" para no darles pistas.
    if (data.website) return json_({ ok: true });

    // El correo es opcional: la mayoría de pacientes deja solo su teléfono
    if (!clean_(data.nombre) || !clean_(data.telefono) || !clean_(data.motivo) || data.privacidad !== true) {
      return json_({ ok: false, error: 'missing-fields' });
    }

    const lock = LockService.getScriptLock();
    lock.waitLock(10000);
    try {
      const sheet = getSheet_();
      const received = Utilities.formatDate(new Date(), TIMEZONE, 'yyyy-MM-dd HH:mm');
      sheet.appendRow([received].concat(FIELDS.map(([key]) => safeCell_(data[key]))).concat(['Nuevo']));
    } finally {
      lock.releaseLock();
    }

    sendNotice_(data);
    return json_({ ok: true });
  } catch (err) {
    console.error(err);
    return json_({ ok: false, error: 'server-error' });
  }
}

function getSheet_() {
  const book = SpreadsheetApp.getActiveSpreadsheet();
  let sheet = book.getSheetByName(SHEET_NAME);
  if (!sheet) {
    sheet = book.insertSheet(SHEET_NAME);
  }
  if (sheet.getLastRow() === 0) {
    sheet.appendRow(['Recibido'].concat(FIELDS.map(([, label]) => label)).concat(['Estado']));
    sheet.setFrozenRows(1);
    sheet.getRange(1, 1, 1, FIELDS.length + 2).setFontWeight('bold');
  }
  return sheet;
}

function sendNotice_(data) {
  const to = NOTIFY_EMAIL || Session.getEffectiveUser().getEmail();
  const rows = FIELDS
    .map(([key, label]) => `<tr><td style="padding:6px 12px 6px 0;color:#52626C;vertical-align:top">${label}</td><td style="padding:6px 0;color:#1E2A33">${escapeHtml_(clean_(data[key]) || '—')}</td></tr>`)
    .join('');
  const html =
    '<div style="font-family:Arial,sans-serif;font-size:14px">' +
    '<p style="color:#072659;font-size:16px;margin:0 0 12px"><strong>Nueva solicitud de cita desde el sitio web</strong></p>' +
    `<table style="border-collapse:collapse">${rows}</table>` +
    '<p style="color:#52626C;margin-top:16px">También quedó registrada en la hoja "' + SHEET_NAME + '".</p>' +
    '</div>';

  const options = { htmlBody: html, name: 'Sitio web Dr. Mario Portillo' };
  if (isEmail_(data.correo)) options.replyTo = clean_(data.correo);

  MailApp.sendEmail(to, `Nueva solicitud de cita: ${clean_(data.nombre)} (${clean_(data.motivo)})`, stripTags_(html), options);
}

function clean_(value) {
  return String(value == null ? '' : value).trim().slice(0, 2000);
}

// Evita que un texto que empiece con =, +, - o @ se interprete como fórmula en la hoja
function safeCell_(value) {
  const text = clean_(value);
  return /^[=+\-@]/.test(text) ? "'" + text : text;
}

function isEmail_(value) {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(clean_(value));
}

function escapeHtml_(text) {
  return text.replace(/[&<>"']/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c]));
}

function stripTags_(html) {
  return html.replace(/<\/tr>/g, '\n').replace(/<[^>]+>/g, ' ').replace(/[ \t]+/g, ' ').trim();
}

function json_(obj) {
  return ContentService.createTextOutput(JSON.stringify(obj)).setMimeType(ContentService.MimeType.JSON);
}
