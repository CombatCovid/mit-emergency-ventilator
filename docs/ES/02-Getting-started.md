---
title: "Proyecto ventilador de emergencia del MIT (E-Vent)"
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

# Especificaciones clave de ventilación


De la Guía clínica, este documento resume el conjunto mínimo de requisitos para la ventilación:

1. Los pacientes deben estar bajo la dirección de un clínico capacitado.
2. Los parámetros mínimos controlables para ventilar a un paciente incluyen:
 - BPM (respiraciones por minuto): entre 8 - 30 BPM
- Volumen corriente (volumen de aire empujado hacia el pulmón): entre 200 - 800 ml según el peso del paciente
- Relación I / E (relación inspiratoria / tiempo de expiración): se recomienda comenzar alrededor de 1: 2; mejor si ajustable entre rango de 1:1 - 1:4[^1]

[^1]: Rango determinado en base a la configuración del ventilador de varios pacientes COVID-19 informados desde las UCI del área de Boston

 - Ayuda a la detección de presión. Cuando un paciente intenta inspirar, puede provocar una caída en el orden de 1 a 5 cm de H2O, con respecto a la presión de PEEP (no necesariamente = atmosférica).

3. La presión de la vía aérea debe ser monitoreada

- La presión máxima debe limitarse a 40 cm H2O en cualquier momento; La presión de la meseta debe limitarse a un máximo de 30 cm H2O
- Se recomienda encarecidamente el uso de una válvula de descarga mecánica pasiva fijada a 40 cm H2O
- El clínico requiere lecturas de presión de meseta y PEEP (consulte la pestaña de documentación clínica)
- Se requiere PEEP de 5-15 cm H2O; muchos pacientes necesitan 10-15 cmH $ _2 $ O

4. Las condiciones de falla deben permitir la conversión a anulación manual del médico, es decir, si la ventilación automática falla, la conversión a ventilación inmediata debe ser inmediata.
5. La ventilación en el aire de la habitación es mejor que no tener ventilación. La mezcla de oxígeno y aire y gas para ajustar FiO2 no es importante en un escenario de emergencia. Ciertamente es bueno tener esa capacidad y puede implementarse fácilmente con un mezclador de oxígeno / aire que ya tienen algunos hospitales.
6. Covid-19 puede aerosolizarse (en el aire), por lo que se requiere filtración HEPA en la exhalación del paciente o entre la unidad de ventilación y el paciente (al final del tubo endotraqueal) para proteger al personal clínico de ciertas infecciones. Los filtros HEPA en línea generalmente se pueden comprar junto con bolsas de reanimación manuales.
7. El intercambiador de calor y humedad debe usarse en línea con el circuito de respiración.
8. Las condiciones de falla deben generar una alarma.

*Este es un requisito mínimo establecido para uso de emergencia. Los equipos diseñados para un uso más regular, incluso para mercados emergentes, requerirán características adicionales para su uso regular.*