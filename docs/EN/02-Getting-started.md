---
title: "MIT Emergency Ventilator (E-Vent) Project"
output: pdf_document
documentclass: article
classoption: onecolumn
pdf_document:
latex_engine: pdflatex
toc: true
lof: true
numberSections: true
highlight: tango
sectionsDepth: 3
chapters: True
figPrefix:
  - "Fig."
  - "Figs."
secPrefix:
  - "Section"
  - "Sections"
fontsize: 12pt
geometry: margin=0.5in
autoEqnLabels: true
cref: true
crossref: true
colorlinks: true
---

# Key Ventilation Specifications


From the Clinical Guidance this document summarizes the minimum set of requirements for ventilation:

1. Patients must be under the management of a trained clinician.
2. The minimum controllable parameters in order to ventilate a patient include:
    - BPM (breaths per minute): between 8 – 30 BPM
    - Tidal Volume (air volume pushed into lung): between 200 – 800 mL based on patient weight
    - I/E Ratio (inspiratory/expiration time ratio): recommended to start around 1:2; best if adjustable between range of 1:1 – 1:4[^1]

    [^1]: Range determined based on several COVID-19 patients’ ventilator settings reported from Boston area ICUs
    
    - Assist Detection pressure. When a patient tries to inspire, they can cause a dip on teh order of 1 – 5 cm H2O, with respect to PEEP pressure (not necessarily = atmospheric).

3. Airway pressure must be monitored
      - Maximum pressure should be limited to 40 cm H2O at any time; Plateau pressure should be limited to max 30 cm H2O
      - The use of a passive mechanical blow-off valve fixed at 40 cm H2O is strongly recommended
      - Clinician require readings of plateau pressure and PEEP (refer to clinical documentation tab)
      - PEEP of 5-15 cm H2O required; many patients need 10-15 cmH$_2$O

4. Failure conditions must permit conversion to manual clinician override, i.e. if automatic ventilation fails, the conversion to immediate ventilation must be immediate.
5. Ventilation on room air is better than no ventilation at all. Blending of oxygen and air gas mixture to adjust FiO2 is not important in an emergency scenario.  It is certainly nice to have that ability and can easily be implemented with a oxygen / air gas blender that some hospitals already have.
6. Covid-19 can get aerosolized (airborne), so HEPA filtration on the patient’s exhalation is required or between the ventilator unit and the patient (at the end of the endotracheal tube) to protect clinical staff from certain infection. In-line HEPA filters can usually be purchased alongside manual resuscitator bags.
7. Heat and moisture exchanger should be used in line with the breathing circuit.
8. Failure conditions must result in an alarm.

*This is a minimal requirement set for emergency use. Equipment designed for more regular use, even if for emerging markets, will require additional features to be used on a regular basis.*
