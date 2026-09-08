---
name: Dr. Mario Portillo — Cirujano Ortopedista
description: A bordered, editorial medical-practice site pairing steady clinical blue with warm burnished gold.
colors:
  primary: "#1D5C7A"
  primary-deep: "#12384B"
  accent-gold: "#C98A32"
  accent-gold-hover: "#C08430"
  neutral-bg: "#F4F6F5"
  surface: "#FFFFFF"
  ink: "#1E2A33"
  ink-soft: "#52626C"
  border: "#DBE2E3"
typography:
  display:
    fontFamily: "Fraunces, Georgia, serif"
    fontSize: "3.25rem"
    fontWeight: 600
    lineHeight: 1.25
    letterSpacing: "-0.02em"
  headline:
    fontFamily: "Fraunces, Georgia, serif"
    fontSize: "2.25rem"
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
  pill: "9999px"
spacing:
  xs: "0.5rem"
  sm: "0.75rem"
  md: "1.5rem"
  lg: "2.5rem"
  xl: "5rem"
components:
  button-primary:
    backgroundColor: "{colors.accent-gold}"
    textColor: "{colors.ink}"
    rounded: "{rounded.sm}"
    padding: "0.75rem 1.5rem"
  button-primary-hover:
    backgroundColor: "{colors.accent-gold-hover}"
  button-secondary:
    backgroundColor: "{colors.primary}"
    textColor: "#FFFFFF"
    rounded: "{rounded.sm}"
    padding: "0.75rem 1.5rem"
  button-secondary-hover:
    backgroundColor: "{colors.primary-deep}"
  button-ghost:
    backgroundColor: "transparent"
    textColor: "{colors.primary}"
    rounded: "{rounded.sm}"
    padding: "0.75rem 1.5rem"
  card:
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.sm}"
    padding: "2rem 1.5rem"
---

# Design System: Dr. Mario Portillo — Cirujano Ortopedista

## Overview

**Creative North Star: "The Trusted Consult"**

This is a private orthopedic practice's site, not a hospital brochure and not a SaaS landing page — the two looks it explicitly rejects. Steady Slate Blue is the resting state: calm, professional, never cold. Burnished Gold is reserved for the moments that matter — the primary call to action, section eyebrows, the interactive points on the anatomy diagram — so its warmth reads as deliberate, not decorative. Structure comes from hairline borders rather than shadows: cards sit in flat, bordered planes, and the one shadow the system currently uses (a 3%-opacity lift on the active body-part card) is a state response, not a base treatment. Fraunces serif headlines against IBM Plex Sans body copy give the page an editorial, slightly literary register that reads as "attending physician's office," not "clinic intake form."

The system leans warmer than strictly clinical: buttons and cards should feel responsive to the visitor, not merely present — primary buttons lift on hover and press on click, service cards lift with a soft shadow, rather than recoloring alone. See the Warmth-on-Touch Rule under Components.

**Key Characteristics:**
- Flat, bordered surfaces; shadow is a state signal, not a resting style.
- One accent color (Burnished Gold) used sparingly for calls to action and points of interactivity.
- Editorial serif display type (Fraunces) paired with a clean, technical sans body (IBM Plex Sans).
- A consistent 4px corner radius across buttons, cards, and inputs — no sharp corners, no heavy rounding.
- Section rhythm built on an 8px-rooted spacing scale (0.5rem through 5rem).

## Colors

Two-color system: a calm, confident blue as the resting professional tone, and a warm gold reserved for action and emphasis.

### Primary
- **Steady Slate Blue** (`#1D5C7A`): buttons that carry secondary actions ("Agendar cita" in the header), active nav-link color, form focus borders, hover states on service cards and step numbers, and the doctor's role label ("Cirujano Ortopedista Principal") — moved here from gold, which fell short of AA contrast on white at that text size.
- **Deep Navy** (`#12384B`): all heading text, the sticky top-bar and footer background, and the hover-darken state for Steady Slate Blue buttons.

### Accent
- **Burnished Gold** (`#C98A32`): the primary CTA ("Solicitar una cita"), the floating contact button, trust pills, credential timeline markers, and the anatomy diagram's interactive hotspots. This is the only saturated color in the system — it must stay rare to keep its authority as "the action color." Text on a gold surface is set in Ink, not white — white-on-gold only reaches ~2.9:1 contrast (fails the 4.5:1 floor for normal-size text); Ink on gold reaches ~5:1. The testimonial quote mark is set in Deep Navy, not gold, for the same reason (a 3rem glyph still falls short of the 3:1 large-text floor at ~2.9:1).
- **Burnished Gold, Hover** (`#C08430`): the darken-on-hover state for gold buttons only, tuned to a shallower shift than a naive darken so Ink text stays above 4.5:1 in the hover state too.

### Neutral
- **Paper White** (`#FFFFFF`): card and header surfaces.
- **Mist Background** (`#F4F6F5`): the page background and resting input fill.
- **Ink** (`#1E2A33`): primary body and label text.
- **Soft Ink** (`#52626C`): secondary text — subtitles, descriptions, metadata.
- **Hairline** (`#DBE2E3`): the border color used on every card, input, and section divider in the system.

### Named Rules
**The One Accent Rule.** Burnished Gold appears only on things the visitor can act on or should notice first (primary CTA, the floating contact button, hotspots, timeline markers). It never fills a large surface or appears on more than one element per view without a specific reason.

## Typography

**Display Font:** Fraunces (with Georgia, serif fallback)
**Body Font:** IBM Plex Sans (with -apple-system, BlinkMacSystemFont, sans-serif fallback)

**Character:** A warm editorial serif for anything that names or titles something, set against a clean, technical sans for anything the visitor reads to understand or act — the pairing is what keeps "trusted physician" from tipping into either "sterile clinic" or "casual blog."

### Hierarchy
- **Display** (600, 3.25rem, line-height 1.25, letter-spacing -0.02em): the hero headline only.
- **Headline** (600, 2.25rem, line-height 1.25): section titles ("Nuestra gama de atención," "Dondequiera que te duela…").
- **Title** (600, 1.1–1.75rem, line-height 1.25): card and profile titles (doctor name, service names, body-part names, credential entries).
- **Body** (400, 1rem/16px, line-height 1.6): paragraph copy; secondary body text drops to 0.9–0.98rem at the same weight and line-height.
- **Label** (600, 0.8rem, letter-spacing 0.1em, uppercase): footer column headers only, white on the dark footer. The system does not use kicker/eyebrow labels above headings — the heading carries its own weight (see Do's and Don'ts).

### Named Rules
**The Serif-Names-Sans-Explains Rule.** Fraunces is reserved for anything acting as a name or title (the doctor, a section, a body part, a credential). IBM Plex Sans carries everything the visitor reads for information — descriptions, form labels, navigation. Never swap the two roles.

## Layout

Content sits inside a single centered container (max-width 1200px, 1.5rem side padding). Sections use a consistent vertical rhythm of 5rem top/bottom padding (`.section-padding`); tighter internal component gaps step down through 2.5rem → 1.5rem → 0.75rem → 0.5rem depending on how closely related the elements are. Grids are the default composition tool: a 2-column split for the anatomy map and doctor-profile areas, a 5-column grid for services (4 for process steps), a 3-column grid for testimonials — all collapsing to 2 columns at 992px and 1 column at 768px, in that order. The contact section is the one asymmetric grid (1fr / 1.2fr) to give the form slightly more room than the info column.

## Elevation & Depth

The system is flat by default: separation between surfaces comes from a 1px hairline border (`#DBE2E3`), not shadow. The active body-part accordion card carries a faint `0 2px 8px rgba(0,0,0,0.03)` as a state signal, not a resting elevation. The confirmed exception is implemented as `--shadow-lift: 0 8px 24px rgba(18, 56, 75, 0.08)`, applied only to the doctor-profile card and the contact-section card — the two surfaces meant to command attention on their section. No other card carries a resting shadow.

### Named Rules
**The Border-First Rule.** Reach for a 1px hairline border before reaching for a shadow. Shadow is earned by an active/hover state or by one of the confirmed high-priority exceptions (doctor profile, contact form) — it is never the default way two surfaces separate.

## Shapes

A single 4px corner radius (`--radius-sm`) is used everywhere a rectangular element needs softening: buttons, cards, inputs, service icon tiles. Fully round shapes (`border-radius: 50%`) are reserved for anything representing a person or a point — the doctor's avatar initials, step-number badges, the body-part active indicator dot, and the anatomy diagram's hotspot circles. A third radius, `--radius-pill: 9999px`, is reserved for pill-shaped badges and CTAs (trust pills, the floating contact button) — the one deliberate exception to the 4px rule, used only for fully-rounded capsule shapes, never as a stronger "more rounded" version of a rectangular card. There is no sharp-corner treatment anywhere in the system.

## Components

### Buttons
- **Shape:** 4px radius, 0.75rem/1.5rem padding, 0.95rem/500-weight label; `background-color` transitions at 0.2s ease, `transform` at 140ms on the strong ease-out curve (`--ease-out: cubic-bezier(0.23,1,0.32,1)`).
- **Primary (`btn-gold`):** Burnished Gold fill, Ink text (not white — see the Accent contrast note above) — the site's one true call-to-action style ("Solicitar una cita," "Enviar solicitud"). Lifts 2px on hover (pointer-fine only) and presses to scale(0.97) on `:active`.
- **Secondary (`btn-primary`):** Steady Slate Blue fill, white text — used for the always-visible header CTA ("Agendar cita") and the floating contact button's counterpart interactions. Same hover-lift and press-scale as Primary.
- **Ghost (`btn-outline`):** transparent fill, Steady Slate Blue border and text, hovers to a 5%-opacity blue wash. Press-scale only, no lift.
- **White (`btn-white`):** white fill, Deep Navy text — used only on the dark CTA banner, where a gold or blue button would lose contrast against the surrounding navy. Press-scale only.

### Named Rules
**The Warmth-on-Touch Rule.** Interactive elements respond to the visitor, not just recolor: primary buttons lift 2px on hover (gated to `hover:hover and pointer:fine` so touch taps don't get a stuck hover state) and every button presses to scale(0.97) on `:active`. Keep it small; this is a clinical-trust brand, not a playful one.

### Cards / Containers
- **Corner Style:** 4px radius, matching the button radius.
- **Background:** Paper White surface on Mist Background pages; one section (testimonials) sits on a distinct pale blue-gray (`#EBF0F2`) to separate it visually without introducing a new border color.
- **Shadow Strategy:** flat by default; see Elevation & Depth for the confirmed exceptions.
- **Border:** 1px solid Hairline on every card variant (service, step, testimonial, doctor-profile, contact form, body-part accordion).
- **Internal Padding:** service/step cards use ~2rem/1.25–1.5rem; the doctor-profile and contact cards use the roomier 2.5–3rem padding reserved for the page's two "hero" cards.

### Inputs / Fields
- **Style:** 1px Hairline border, 4px radius, Mist Background fill at rest.
- **Focus:** border shifts to Steady Slate Blue and fill switches from Mist Background to Paper White — the only input state change in the system, no glow or outline ring.

### Navigation
- **Style:** sticky white header with a Hairline bottom border; nav links are Ink at rest and transition to Steady Slate Blue on hover (color-only, 0.2s). A dark, thin top-bar (Deep Navy) sits above it carrying the phone number and a gold "Agendar consulta" text link.
- **Mobile:** below 768px, the nav collapses behind a hamburger toggle (drawn SVG icon, not a Unicode glyph) that opens a bordered, shadow-lifted dropdown card anchored under the header — opacity + an 8px slide, 180ms ease-out, closing again on outside-equivalent actions (selecting a link). Below 480px the header's "Agendar cita" button is hidden in favor of the floating contact button, since the two would otherwise crowd the logo on the smallest phones.

### Interactive Anatomy Diagram (signature component)
A real photograph of a human skeleton (`assets/esqueleto.jpg`, user-supplied), full-body front view, with each treatable body region marked by a paired "hotspot" positioned over the photo by percentage coordinates: a Burnished Gold outer ring (25% opacity) around a solid gold inner dot with a thin white halo for legibility against the bone. Hovering or activating a hotspot — or its paired list item in the accordion at left — recolors the inner dot to Steady Slate Blue and scales the outer ring to 1.3×, giving the visitor two synchronized ways (list or diagram) to explore the same information. Both the list header and the hotspot are real interactive controls (a `<button>` and a `tabindex="0" role="button"` div with Enter/Space handling), so the sync works by keyboard as well as pointer. This bidirectional list/diagram sync is the site's most distinctive interaction and should be preserved in any redesign of this section. The photo replaced an earlier hand-drawn SVG skeleton, which read as placeholder-ish primitive-shape clip art; the coordinate mapping (percentage `left`/`top` per hotspot) is calibrated to this specific photo's pose and must be re-measured if the photo is ever swapped.

### Floating Contact Button (signature component)
A pill-shaped, Burnished Gold "Contáctanos" button fixed to the bottom-right corner, with a phone icon and Ink text. It stays hidden until the visitor scrolls about 60% of the way through the hero, then fades and slides in (220ms ease-out) so it never competes with the hero's own CTAs. Clicking it scrolls to the contact section and focuses the name field directly, collapsing "find contact info" and "start filling the form" into one tap. This is the site's persistent, always-reachable conversion path — treat it as a fixed invariant of the layout, not a per-page optional.

## Do's and Don'ts

### Do:
- **Do** keep Burnished Gold rare — one primary action or emphasis point per view (The One Accent Rule).
- **Do** use Fraunces only for names/titles and IBM Plex Sans for everything read for information (The Serif-Names-Sans-Explains Rule).
- **Do** default new surfaces to hairline borders before adding shadow (The Border-First Rule).
- **Do** add a small hover/focus motion signal to interactive elements going forward, not just a color swap (The Warmth-on-Touch Rule).
- **Do** keep the anatomy diagram's list-and-hotspot sync intact when touching that section.

### Don't:
- **Don't** let the page read as a generic corporate hospital brochure or a generic tech-startup landing page — both were explicitly rejected as anti-references.
- **Don't** introduce a second saturated accent color; Steady Slate Blue and Burnished Gold are the complete palette.
- **Don't** apply the doctor-profile/contact-form shadow exception to ordinary cards (service, step, testimonial) — they stay flat.
- **Don't** invent real contact details, credentials, statistics, or testimonials — every instance currently on the page is a confirmed placeholder (see PRODUCT.md's Evidence on Hand).
- **Don't** add a kicker/eyebrow label above a section heading. The heading carries its own weight; work the words into the heading or body copy instead.
- **Don't** set text directly on Burnished Gold in white — it fails contrast. Use Ink (or Deep Navy for large decorative marks) instead.
