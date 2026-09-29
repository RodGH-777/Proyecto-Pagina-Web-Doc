---
name: Dr. Mario Portillo — Cirujano Ortopedista
description: A bordered, editorial medical-practice site pairing a vivid clinical turquoise with a saturated deep navy.
colors:
  primary: "#0B3D91"
  primary-deep: "#072659"
  accent-turquoise: "#0F766E"
  accent-turquoise-hover: "#0B5D57"
  accent-turquoise-light: "#5EEAD4"
  neutral-bg: "#F0FAF9"
  surface: "#FFFFFF"
  ink: "#1E2A33"
  ink-soft: "#52626C"
  border: "#D3E6E3"
  error: "#B42318"
  testimonial-bg: "#E3F3F1"
typography:
  display:
    fontFamily: "Fraunces, Georgia, serif"
    fontSize: "3.25rem"
    fontWeight: 600
    lineHeight: 1.25
    letterSpacing: "-0.02em"
  display-compact:
    fontFamily: "Fraunces, Georgia, serif"
    fontSize: "2.5rem"
    fontWeight: 600
    lineHeight: 1.25
  numeral:
    fontFamily: "Fraunces, Georgia, serif"
    fontSize: "2.75rem"
    fontWeight: 700
    lineHeight: 1
  headline:
    fontFamily: "Fraunces, Georgia, serif"
    fontSize: "2.25rem"
    fontWeight: 600
    lineHeight: 1.25
  title-lg:
    fontFamily: "Fraunces, Georgia, serif"
    fontSize: "1.75rem"
    fontWeight: 600
    lineHeight: 1.25
  title:
    fontFamily: "Fraunces, Georgia, serif"
    fontSize: "1.15rem"
    fontWeight: 600
    lineHeight: 1.25
  body:
    fontFamily: "IBM Plex Sans, -apple-system, BlinkMacSystemFont, sans-serif"
    fontSize: "1rem"
    fontWeight: 400
    lineHeight: 1.6
  label:
    fontFamily: "IBM Plex Sans, -apple-system, BlinkMacSystemFont, sans-serif"
    fontSize: "0.8rem"
    fontWeight: 600
    letterSpacing: "0.1em"
rounded:
  sm: "4px"
  md: "12px"
  pill: "9999px"
spacing:
  xs: "0.5rem"
  sm: "0.75rem"
  md: "1.5rem"
  lg: "2.5rem"
  xl: "5rem"
components:
  button-primary:
    backgroundColor: "{colors.accent-turquoise}"
    textColor: "#FFFFFF"
    rounded: "{rounded.pill}"
    padding: "0.8rem 1.75rem"
  button-primary-hover:
    backgroundColor: "{colors.accent-turquoise-hover}"
  button-secondary:
    backgroundColor: "{colors.primary}"
    textColor: "#FFFFFF"
    rounded: "{rounded.pill}"
    padding: "0.8rem 1.75rem"
  button-secondary-hover:
    backgroundColor: "{colors.primary-deep}"
  button-ghost:
    backgroundColor: "transparent"
    textColor: "{colors.primary}"
    rounded: "{rounded.pill}"
    padding: "0.8rem 1.75rem"
  card:
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.sm}"
    padding: "2rem 1.5rem"
---

# Design System: Dr. Mario Portillo — Cirujano Ortopedista

## Overview

**Creative North Star: "The Trusted Consult"**

This is a private orthopedic practice's site, not a hospital brochure and not a SaaS landing page — the two looks it explicitly rejects. The system was recolored end to end on the client's explicit request: the original steady-blue-plus-gold palette read as too quiet against a page that has few real photographs yet, and the client wanted a color identity bold enough to carry the page on its own. Vivid Turquoise now does the work Burnished Gold used to do (the one true action color), and a saturated deep Navy replaces the old muted slate blue as the grounding professional tone. The health/wellness association of turquoise keeps the register "clinical-positive" rather than corporate-cold — the client's explicit brief — while the navy keeps it a serious surgical practice, not a wellness spa.

Structure still comes from hairline borders rather than shadows on ordinary cards — that part of the system did not change. What did change: three sections (hero, the new stats banner, the contact section) now carry a fully saturated navy gradient background as deliberate rhythm-setting color blocks, buttons are pill-shaped with a colored glow shadow in their own hue (the client's explicit request — "quiero que se noten"), and the page's neutral background is a soft turquoise-tinted off-white instead of a plain gray. Fraunces serif headlines against IBM Plex Sans body copy are unchanged from the original brief.

**Key Characteristics:**
- Flat, bordered surfaces for ordinary cards; three intentional full-bleed navy-gradient sections (hero, stats banner, contact) carry the page's boldest color moments.
- One saturated accent (Vivid Turquoise) used for every call to action, plus a light turquoise variant reserved strictly for text set on the dark navy sections.
- Buttons are pill-shaped (`--radius-pill`) with a soft shadow tinted to their own fill color — the system's answer to "make the buttons impossible to miss."
- Editorial serif display type (Fraunces) paired with a clean, technical sans body (IBM Plex Sans) — unchanged from the original brief.
- A soft turquoise-tinted off-white replaces the old neutral gray as the page's resting background.

## Colors

Two-color system: a saturated deep navy as the grounding professional tone, and a vivid turquoise reserved for action and emphasis. Both colors are meaningfully more saturated than the palette they replaced — that intensity is the point, not an overshoot to correct later.

### Primary
- **Deep Navy** (`#0B3D91`): the header CTA ("Agendar cita"), active nav-link color, form focus borders, hover states on service cards and step numbers, and the doctor's role label. Also the lighter end of the navy gradient used on the hero, stats banner, and contact section.
- **Navy, Deep** (`#072659`): all heading text on light surfaces, the sticky top-bar and footer background, the darker end of the navy gradient, and the hover-darken state for Deep Navy buttons.

### Accent
- **Vivid Turquoise** (`#0F766E`): the primary CTA ("Solicitar una cita," "Enviar solicitud"), the floating contact button, trust pills, credential timeline markers, and the anatomy diagram's interactive hotspots. This is the only saturated non-navy color in the system — it stays rare to keep its authority as "the action color." Text on a turquoise surface is white, not the page's dark ink — ink-on-turquoise only reaches ~2.7:1 (fails 4.5:1); white-on-turquoise reaches ~5.5:1.
- **Vivid Turquoise, Hover** (`#0B5D57`): the darken-on-hover state for turquoise buttons, tuned to keep white text above 4.5:1 in the hover state too.
- **Turquoise, Light** (`#5EEAD4`): used exclusively as text/icon color set directly on a navy background (the top-bar's "Agendar consulta" link, footer link hover, the stats banner's numbers). Regular Vivid Turquoise fails contrast against the navy sections (~1.8–2.7:1) — this lighter tint is the fix, and it must never be used as text on a light surface (it fails there in the other direction, ~1.5:1 on white).

### Neutral
- **Paper White** (`#FFFFFF`): card and header surfaces.
- **Mist Background** (`#F0FAF9`): the page's resting background — a soft turquoise-tinted off-white, replacing a plain neutral gray so the page reads as intentionally colored even where no accent is present.
- **Ink** (`#1E2A33`): primary body and label text.
- **Soft Ink** (`#52626C`): secondary text — subtitles, descriptions, metadata.
- **Hairline** (`#D3E6E3`): the border color used on every ordinary card, input, and section divider — tinted to match the new neutral rather than a cool gray.

### Named Rules
**The One Accent Rule.** Vivid Turquoise appears only on things the visitor can act on or should notice first (primary CTA, the floating contact button, hotspots, timeline markers, trust pills). It never fills a large surface or appears on more than one element per view without a specific reason.

**The Light-on-Navy Rule.** Any text or icon set directly on one of the three navy-gradient sections uses white or Turquoise Light — never Ink, never full-strength Vivid Turquoise or Deep Navy text on a navy background. Check every new element added to the hero, stats banner, or contact section against this before shipping it.

## Typography

**Display Font:** Fraunces (with Georgia, serif fallback)
**Body Font:** IBM Plex Sans (with -apple-system, BlinkMacSystemFont, sans-serif fallback)

**Character:** A warm editorial serif for anything that names or titles something, set against a clean, technical sans for anything the visitor reads to understand or act. Unchanged by the recolor.

### Hierarchy
- **Display** (600, 3.25rem, line-height 1.25, letter-spacing -0.02em): the hero headline only, now set in white against the navy gradient.
- **Headline** (600, 2.25rem, line-height 1.25): section titles ("Nuestra gama de atención," "Dondequiera que te duela…").
- **Title** (600, 1.1–1.75rem, line-height 1.25): card and profile titles (doctor name, service names, body-part names, credential entries).
- **Body** (400, 1rem/16px, line-height 1.6): paragraph copy; secondary body text drops to 0.9–0.98rem at the same weight and line-height.
- **Label** (600, 0.8rem, letter-spacing 0.1em, uppercase): footer column headers only, white on the dark footer. The system does not use kicker/eyebrow labels above headings.

### Named Rules
**The Serif-Names-Sans-Explains Rule.** Fraunces is reserved for anything acting as a name or title. IBM Plex Sans carries everything the visitor reads for information. Unchanged by the recolor.

## Layout

Content sits inside a single centered container (max-width 1200px, 1.5rem side padding). Sections use a consistent vertical rhythm of 5rem top/bottom padding; tighter internal component gaps step down through 2.5rem → 1.5rem → 0.75rem → 0.5rem. Grids remain the default composition tool: 2-column for the anatomy map and doctor-profile areas, 5-column for services, 4-column for process steps and the new stats banner, 3-column for testimonials — all collapsing to 2 columns at 992px and 1 column at 768px. The contact section stays the one asymmetric grid (1fr / 1.2fr). None of this changed in the recolor; it is a color-and-shape pass, not a layout pass.

## Elevation & Depth

Ordinary cards are still flat by default: separation comes from a 1px hairline border, not shadow. The active body-part accordion card still carries a faint `0 2px 8px rgba(0,0,0,0.03)` as a state signal. The confirmed shadow exception (`--shadow-lift: 0 8px 24px rgba(7, 38, 89, 0.08)`) still applies only to the doctor-profile card and the contact-grid card.

What's new: three sections now carry a full-bleed `linear-gradient(135deg, var(--azul-oscuro), var(--azul-primario))` background — the hero, the stats banner directly beneath it (visually one continuous dark block), and the contact section (the white contact-grid card floats on top of it). This is a deliberate, bounded exception to "flat by default": exactly these three sections, never more, chosen because they are the page's highest-stakes moments (first impression, credibility proof, conversion). Buttons additionally carry a colored glow shadow tinted to their own fill (`rgba(15, 118, 110, 0.35)` for turquoise, `rgba(11, 61, 145, 0.35)` for navy) — this is new and applies to every solid-fill button, not just an exception.

The chatbot panel is a second, narrower exception: it's a floating surface (like the mobile nav dropdown), so it earns elevation on its own — but it carries shadow *only*, no border. A hairline border plus a wide diffuse shadow on the same element is a well-documented tell of generated UI (the mechanical detector flags it as `gpt-thin-border-wide-shadow`); commit to one. The mobile nav dropdown still uses `--shadow-lift` (its existing, smaller exception) — don't retrofit it with the chatbot's larger shadow.

### Named Rules
**The Border-First Rule.** Ordinary cards reach for a 1px hairline border before a shadow. Unchanged.

**The Three Dark Sections Rule.** Exactly three sections carry the full navy gradient: hero, stats banner, contact. Don't add a fourth without a specific reason — the effect works because it's rare and purposeful, not because the whole page is dark.

## Shapes

Three radii now carry real weight, where the system previously leaned almost entirely on one. Cards, inputs, and service icon tiles keep the original 4px corner radius (`--radius-sm`) — that part is untouched. **Buttons moved to fully pill-shaped** (`--radius-pill: 9999px`) as part of the "make it noticeable" brief — every `.btn` variant, not just badges and the floating contact button as before. A third step, `--radius-md: 12px`, is reserved for conversational surfaces — the chatbot panel and its message bubbles — softer than a card, short of a pill; don't reuse it for ordinary cards or buttons. Fully round shapes (`border-radius: 50%`) are still reserved for anything representing a person or a point (avatar initials, step-number badges, hotspot circles).

### Named Rules
**The Pill-Button Rule.** Every button-shaped interactive element is fully rounded. A 4px-radius button next to a pill-radius button reads as an inconsistency, not a hierarchy — if a new button is added, it is a pill.

## Components

### Buttons
- **Shape:** fully pill-shaped (`--radius-pill`), 0.8rem/1.75rem padding, 0.95rem/600-weight label; `background-color` transitions at 0.2s ease, `transform` at 140ms on the strong ease-out curve, plus a `box-shadow` transition for the glow.
- **Primary (`btn-gold`):** Vivid Turquoise fill, **white** text (not ink — the darker turquoise fails ink contrast), with a turquoise-tinted glow shadow. The site's one true call-to-action style ("Solicitar una cita," "Enviar solicitud"). Lifts 2px on hover (pointer-fine only), glow intensifies on hover, presses to scale(0.97) on `:active`.
- **Secondary (`btn-primary`):** Deep Navy fill, white text, navy-tinted glow shadow — used for the header CTA. Same hover-lift and press-scale as Primary.
- **Ghost (`btn-outline`):** transparent fill, Deep Navy border and text, hovers to a 6%-opacity navy wash. For use on light surfaces only (e.g., "Conoce más →" in the doctor section).
- **Ghost, Light (`btn-outline-light`):** transparent fill, white/60%-white border and text — the dark-background counterpart to Ghost, used for the hero's second CTA ("¿Dónde te duele?"). Never use plain `btn-outline` on a navy section; its navy-on-navy border disappears.
- **White (`btn-white`):** white fill, Deep Navy text, soft black shadow — used only on the CTA banner section, where it needs to read against the surrounding navy.

### Named Rules
**The Colored-Glow Rule.** Every solid-fill button carries a `box-shadow` tinted to its own fill color, not a neutral gray shadow — this is the client's explicit "make buttons stand out" request, and a neutral shadow on a saturated button reads as an oversight, not a choice.

### Cards / Containers
- **Corner Style:** 4px radius, unchanged.
- **Background:** Paper White surface on Mist Background pages; testimonials sit on a distinct pale turquoise-tinted background (`#E3F3F1`) to separate visually without a new border color.
- **Shadow Strategy:** flat by default; see Elevation & Depth for the confirmed exceptions.
- **Border:** 1px solid Hairline on every card variant.
- **Internal Padding:** unchanged from the original brief.

### Inputs / Fields
- **Style:** 1px Hairline border, 4px radius, Mist Background fill at rest.
- **Focus:** border shifts to Deep Navy and fill switches to Paper White. Unchanged in mechanism; the color itself is now the new Deep Navy.
- **Invalid:** border shifts to Error Red (`#B42318`, 6.5:1 on white) via `:user-invalid`, so it only appears after the visitor has touched the field — never on page load. Error Red is reserved for this; it never decorates.
- **Required fields:** nombre, teléfono, correo, motivo de consulta, and the privacy checkbox. "Motivo" is pre-filled from the anatomy diagram's selection unless the visitor has already chosen one manually.
- **Success state:** on submit the form is replaced in place (no modal, no `alert()`) by a Mist-filled confirmation block with a turquoise check disc, the visitor's first name, a concrete next step, and a WhatsApp fallback for urgent cases. Focus moves to it and it is announced as `role="status"`.

### Navigation
- **Style:** sticky white header with a Hairline bottom border; nav links are Ink at rest and transition to Deep Navy on hover. The dark top-bar above it is now the Navy Deep gradient-end color, and its "Agendar consulta" link is set in Turquoise Light (not Vivid Turquoise — see the Light-on-Navy Rule).
- **Mobile:** unchanged mechanism (hamburger toggle, sliding dropdown card, header CTA hidden below 480px in favor of the floating contact button).

### Interactive Anatomy Diagram (signature component)
A real photograph (`assets/esqueleto.jpg`) with percentage-positioned hotspots, keyboard-operable, and the site's most distinctive interaction. Hotspots are **invisible until selected** (client decision): only the active zone shows its Deep Navy dot and pulsing turquoise ring; hover/focus gives a faint preview without changing selection. To keep the photo discoverable on touch screens, a Vivid Turquoise hint line ("Toca la zona donde te duele") sits above it, and the first time the photo scrolls into view each zone flashes once, top to bottom, then hides again (skipped under reduced motion). Selecting a zone also pre-fills the contact form's "Motivo de consulta".

### Floating Contact Button (signature component)
Unchanged in mechanism and position. Now Vivid Turquoise with white text (moved off Ink for the same contrast reason as the primary button) and a turquoise-tinted glow shadow (`rgba(15, 118, 110, 0.45)`) instead of a neutral navy shadow.

### Stats Banner (new component)
A full-bleed navy-gradient strip directly beneath the hero — visually one continuous dark block with it — showing four figures in a row (years of experience, surgeries, patients, and the count of professional associations). Numbers are set large in Fraunces and Turquoise Light (never Vivid Turquoise — fails contrast on navy); labels are white at 85% opacity. Collapses to 2 columns at 768px. The three numeric figures are explicit placeholders pending real data (see PRODUCT.md); the count of associations (6) is real, derived from the confirmed membership list below.

### Professional Associations (new content, "Sobre el doctor")
A row of trust-pill badges, one per organization, placed below the credentials timeline. These are real, user-confirmed memberships, not placeholders. Rendered as text badges (reusing the existing trust-pill component) rather than recreated logos: hand-drawing an approximation of a third-party organization's official mark (AAOS, SOFCOT, a medical-college seal) would misrepresent it. If real logo files are supplied later, they can replace the text badges directly.

### Virtual Assistant / FAQ Chatbot (signature component)
A predefined question-and-answer dialogue, not a generative AI chat — every message the bot sends is authored, none is generated at runtime, so there is zero risk of it inventing medical information. The content is a directed graph (JS object, `chatbotGraph`), not a strict tree: multiple branches converge on the same shared answer nodes (e.g., every branch can reach "Agendar cita ahora" or "Escribir por WhatsApp") without duplicating that content. A fixed circular toggle at bottom-left (mirrored from the floating contact button at bottom-right, so the two never collide) opens a panel styled as a real chat: navy-gradient header, message bubbles (bot bubbles bordered Paper White, user-choice echoes filled Deep Navy), and the current node's choices rendered as pill buttons below — one of which may be styled as a gold `chatbot-choice-cta` when it is the answer's primary conversion action. The panel uses `--radius-md` (12px) and a shadow only, no border — see the Elevation note below. Every node offers a path back to the main menu; the user is never trapped in a branch. Keyboard- and screen-reader-operable (real `<button>` choices, `role="dialog"`, Escape closes and returns focus to the toggle).

### Named Rules
**The Predefined-Content Rule.** The chatbot never calls an LLM or generates text at runtime. Every message is authored in `chatbotGraph` and reviewed before shipping — this is a deliberate liability and accuracy choice for a medical practice, not a placeholder for a future AI integration. If real AI chat is added later, it is a different component, not an upgrade to this one.
**The No-Dead-End Rule.** Every node in the graph includes a way back to the main menu (`next: 'start'`) or to its immediate parent. A node that only offers "further" choices is a bug, not a decision.

## Do's and Don'ts

### Do:
- **Do** keep Vivid Turquoise rare — one primary action or emphasis point per view (The One Accent Rule).
- **Do** use white or Turquoise Light for anything set directly on a navy-gradient section, never Ink or full-strength Turquoise/Navy text-on-navy (The Light-on-Navy Rule).
- **Do** make every new button pill-shaped with a glow shadow tinted to its own fill (The Pill-Button Rule, The Colored-Glow Rule).
- **Do** use Fraunces only for names/titles and IBM Plex Sans for everything read for information.
- **Do** default ordinary cards to hairline borders before adding shadow (The Border-First Rule).
- **Do** keep the anatomy diagram's list-and-hotspot sync intact when touching that section.

### Don't:
- **Don't** let the page read as a generic corporate hospital brochure or a generic tech-startup landing page.
- **Don't** introduce a third saturated accent color; Deep Navy and Vivid Turquoise (plus its light variant, text-only) are the complete palette.
- **Don't** add a fourth full-navy-gradient section without a specific reason (The Three Dark Sections Rule) — the effect depends on rarity.
- **Don't** apply the doctor-profile/contact-grid shadow exception to ordinary cards (service, step, testimonial) — they stay flat.
- **Don't** invent real contact details, credentials, or testimonials, and don't invent new statistics beyond the three explicit placeholders already recorded — see PRODUCT.md's Evidence on Hand.
- **Don't** add a kicker/eyebrow label above a section heading.
- **Don't** set white or Ink text on Vivid Turquoise interchangeably without checking — Ink fails (~2.7:1), white passes (~5.5:1). Never set Vivid Turquoise as text directly on a navy background — use Turquoise Light instead.
- **Don't** hand-draw or approximate a third-party organization's logo — the confirmed associations render as text badges until real logo files are supplied.
