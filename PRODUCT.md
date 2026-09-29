# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Stack

Static HTML/CSS/JS — a single `index.html`, no framework, no build tooling, no package manager.

## Users

Prospective patients in San Salvador, El Salvador, dealing with orthopedic pain, joint injury, or a degenerative condition (knee, hip, spine, shoulder, foot/ankle, or hand/wrist/elbow), plus sports-injury patients and patients with acute fractures needing urgent trauma care. Their job on this page: decide whether to request a consultation with Dr. Mario Portillo.

## Product Purpose

A landing page for Dr. Mario Portillo's orthopedic surgery practice that informs prospective patients about his specialties and drives them to request/schedule a consultation.

## Positioning

Personalized, direct access to the doctor rather than the impersonal feel of a large clinic — patients understand their condition and treatment options at every step, from first consultation through recovery.

## Capabilities and Constraints

Confirmed specialties/services to represent (all five reflected in the current page's service cards):
- Ortopedia general
- Medicina deportiva
- Cuidado de columna
- Reemplazo articular y prótesis
- Traumatología y fracturas de urgencia

Body regions covered by the existing pain-locator map: hombro, columna, cadera, rodilla, pie y tobillo, mano/muñeca/codo.

Confirmed: the practice accepts the following insurers — SISA, ASESUISA, MAPFRE, and Seguros e Inversiones. Listed in the contact section next to the clinic address.

Confirmed: Dr. Portillo is a member of six professional associations (real, user-confirmed, not placeholders) — Asociación Salvadoreña de Ortopedia y Traumatología, American Academy of Orthopaedic Surgeons (AAOS), Médicos de El Salvador, SOFCOT Francia, Colegio Médico de El Salvador, and Sociedad Latinoamericana de Ortopedia y Traumatología (SLAOT). Shown as text badges (not logos — see Evidence on Hand) in "Sobre el doctor," and their count (6) appears as a real figure in the stats banner.

Open/undecided (do not assume until confirmed): whether the practice serves other patient types (adultos mayores, referidos de otros médicos), whether care happens at more than one location, and whether telemedicine or ambulatory surgery are offered.

## Brand Commitments

Practice name and title are fixed: "Dr. Mario Portillo — Cirujano Ortopedista."

## Evidence on Hand

- Images the site actually loads live in `assets/` (`doctor.jpg`, `esqueleto.jpg`). Source files and unused reference/stock photos are kept in `assets/referencias/`; nothing on the page points there.

- No real photography of the doctor, office, or patients exists yet. A real stock-style photograph of a human skeleton (`assets/esqueleto.jpg`, user-supplied) is used for the anatomy diagram — that one asset is real, not a placeholder. The doctor headshot (`assets/doctor.jpg`) in "Sobre el doctor" is a stock/reference photo used only to demo layout for the client (this is a mock page); it is not a photo of Dr. Portillo and must be swapped for a real portrait before the site goes live.
- The clinic address is real, user-confirmed: Medicentro La Esperanza, Módulo K, Local 111, Colonia Médica, San Salvador, El Salvador. It is embedded in the contact section (with an interactive Google Maps embed and a Waze deep link, both built from the address text so they self-geocode rather than relying on hardcoded coordinates), the footer, the chatbot's `consultorio-menu` node, the Schema.org JSON-LD, and `politica-privacidad.html`. Exact GPS coordinates have not been confirmed — do not add a `geo` field to the JSON-LD until they are.
- Phone (`+503 2200-8888`/`+503 7890-1234`) and email (`contacto@drmarioportillo.com`) are still explicit placeholders. Real values are not yet available — confirmed pending, do not fabricate replacements.
- The stats banner ("+15 Años de Experiencia," "+800 Cirugías Realizadas," "+2,000 Pacientes Atendidos") shows three explicit placeholder figures, not real numbers. Do not invent different numbers; keep these until real data is provided. The banner's fourth figure ("6 Sociedades y Asociaciones Médicas") is real — it is a direct count of the confirmed association list below, not a placeholder.
- The insurance list (SISA, ASESUISA, MAPFRE, Seguros e Inversiones) and the six professional associations (Asociación Salvadoreña de Ortopedia y Traumatología, AAOS, Médicos de El Salvador, SOFCOT Francia, Colegio Médico de El Salvador, SLAOT) are real, user-confirmed facts, not placeholders. The associations are shown as text badges rather than recreated logos: hand-drawing an approximation of a real third-party organization's official mark would misrepresent it. If the user supplies the actual logo image files, they can be swapped in directly.
- Credentials listed on the page (Universidad de El Salvador, "hospital escuela de referencia," Center for Joint Replacement / Orthopedic Health Alliance in the U.S.) are confirmed placeholders and must be replaced with the doctor's real academic/professional credentials once supplied.
- The three patient testimonials on the page are confirmed placeholders and must be replaced with real testimonials (or removed) once available — do not fabricate new ones either.

## Pre-launch Checklist

Things that are fine for the client mock but must change before the real site goes live:
- `og:image` and the JSON-LD `image` both point to `assets/doctor.jpg` (the stock placeholder), so it would appear in WhatsApp/Facebook link previews and search results. Swap together with the real portrait.
- The form's success message promises a call "en las próximas 24 horas hábiles." That turnaround is a placeholder commitment — confirm the practice can actually meet it, or change the copy.
- The contact form does not submit anywhere yet; the success state is shown client-side only. A real submission handler (email service or backend) is needed.
- The hero trust check "Pacientes 5 estrellas" was replaced with "Miembro de 6 sociedades médicas" because the former rested on placeholder testimonials. Don't reintroduce a star-rating claim until there are real reviews to back it.

## Privacy Policy (`politica-privacidad.html`)

A privacy policy page exists, linked from the contact form's consent checkbox and the site footer, covering what data the form collects (including health/symptom data), why, retention, sharing, and patient rights under general data-protection and medical-confidentiality principles applicable in El Salvador. This was drafted by Claude as a best-practice starting point, not by a lawyer — it must be reviewed by a licensed Salvadoran attorney before the site goes live with the real doctor, since El Salvador's private-sector data protection legislation was uncertain/evolving at the time of writing and wasn't independently verified.

## Virtual Assistant (FAQ Chatbot)

**Status: disabled (2026-09-29), code kept intact.** The client asked to turn the bot off without deleting it. It is controlled by a single switch in `index.html`: `const CHATBOT_ENABLED = false;` inside the chatbot block of the script. Setting it to `true` shows the toggle and panel again (both carry a `hidden` attribute in the markup that the script removes only when enabled). Everything below still describes the bot as built.

The site includes a predefined question-and-answer chatbot (bottom-left toggle), navigated as a directed graph rather than free-text chat — every response is authored in advance, never generated by an LLM at runtime. This was a deliberate architecture choice: for a medical practice, a bot that can only say pre-approved things carries none of the liability or accuracy risk of one that generates clinical-sounding answers on the fly. Content covers four branches (agendar cita, síntomas por zona, cirugía, información del consultorio), reusing every confirmed fact already on the page (phone, WhatsApp, hours, address, insurers, association count) and linking out to the existing `recursos/` articles where relevant. General guidance about symptoms/red-flags in the bot mirrors the same non-diagnostic, "consult a doctor" framing already used in the `recursos/` articles — it does not attempt to diagnose. If a real AI-driven chat is added later, treat it as a separate, new feature rather than an extension of this one; the "answers are pre-approved" property is the whole point of the current design.

## Product Principles

1. Read as one doctor's personal practice, not an impersonal clinic — warmth and direct access over institutional scale.
2. Move an anxious, in-pain visitor from "where does it hurt" to booking a consultation with minimal friction.
3. Represent the full breadth of care (general orthopedics, sports medicine, spine, joint replacement/prosthetics, trauma/urgent fractures) without diluting knee/hip/joint replacement as the flagship expertise.
4. Never present placeholder contact info, credentials, stats, or testimonials as verified fact in shipped copy — keep them legible as placeholders until real data replaces them.
