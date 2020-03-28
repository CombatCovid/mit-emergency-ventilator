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

# Título: PProyecto ventilador de emergencia del MIT (E-Vent)

### Referencia:

Toda la información compilada aquí se puede encontrar [en este enlace] (https://e-vent.mit.edu/)

## Antecedentes y necesidad

Somos uno de los varios equipos que reconocieron los desafíos que enfrentan los médicos italianos y estamos trabajando para encontrar una solución a la anticipada falta global de ventiladores. Solo en los EE. UU., La pandemia de COVID-19 puede causar escasez de ventiladores del orden de 300,000-700,000 unidades (Planes de respuesta a la pandemia de los CDC). Estos podrían presentarse a escala nacional en semanas, y ya se están sintiendo en ciertas áreas. Es muy probable que un aumento en la producción de ventiladores convencionales se quede corto y con un costo asociado significativo (advertencia del muro de pago).

Casi todas las camas en un hospital tienen un resucitador manual (Ambu-Bag) cerca, disponible en caso de una respuesta rápida o un código donde los trabajadores de la salud mantienen la oxigenación apretando la bolsa. La automatización de esta parece ser la estrategia más simple que satisface la necesidad de ventilación mecánica de bajo costo, con la capacidad de fabricarse rápidamente en grandes cantidades. Sin embargo, hacer esto de manera segura no es trivial.

El uso de una máscara de válvula de bolsa (BVM) en situaciones de emergencia no es un concepto nuevo. En 2010, un equipo de estudiantes del MIT clase 2.75 Diseño de dispositivos médicos (documento original aquí y noticia aquí) introdujo un ventilador portátil que utilizaba una bolsa ambu, pero no pasó de la etapa del prototipo. Casi al mismo tiempo, un equipo de Stanford desarrolló un ventilador de menor costo para las reservas de emergencia y el mundo en desarrollo. Se parece a un ventilador moderno de la UCI (Onebreath), pero "la producción para los hospitales de EE. UU. Comenzaría [en] aproximadamente 11 meses", lo que lo convierte en "una solución de segunda ola" (Artículo de revisión técnica del MIT). El año pasado, dos equipos de estudiantes volvieron a visitar el concepto AMBU® Bag, uno de la universidad Rice (aquí y aquí) y otro equipo con sede en Boston que ganó el premio MIT Sloan’s Healthcare (MIT News: Umbilizer). Otros equipos que trabajan actualmente en este desafío se pueden encontrar vinculados en nuestra página de "Recursos adicionales".

## Pregunta clave de investigación

Hemos lanzado un proyecto de investigación de emergencia con un equipo de ingenieros del MIT y clínicos estadounidenses para abordar la pregunta:

**¿Es posible ventilar de manera segura a un paciente con COVID-19 accionando automáticamente un reanimador manual?**

Nuestro proceso para abordar esta pregunta es identificar primero los requisitos mínimos para un ventilador de bajo costo, basado en la sabiduría colectiva de muchos médicos, diseñar contra estos requisitos, realizar pruebas inmediatas, informar los resultados, repetir y facilitar la discusión.

La ventilación manual con una bolsa Ambu es una solución a corto plazo en un entorno de cuidados críticos, sin evidencia clínica aparente con respecto a la seguridad del uso a largo plazo (días-semanas). Existen múltiples escenarios en los que podría necesitarse soporte respiratorio: los pacientes pueden estar despiertos o dormidos, sedados o sedados y paralizados, respirar espontáneamente, destetar de un respiradero, etc. Además, cambiar las presentaciones clínicas con SDRA requiere un cambio de ventilación minuto (volumen corriente) x frecuencia respiratoria) a estrategias de "protección pulmonar", que ponen al paciente en riesgo de cosas como auto-PEEP. Algunas de estas situaciones son más simples que otras, siendo la más simple la ventilación de un paciente paralizado y sedado, y como mínimo se podría usar un ventilador de emergencia seguro en tal situación para liberar un ventilador convencional.

Cualquier solución debe utilizarse solo en un entorno de atención médica con monitoreo directo por parte de un profesional clínico. Si bien no puede reemplazar un ventilador ICU aprobado por la FDA, en términos de funcionalidad, flexibilidad y eficacia clínica, se espera que el MIT E-Vent tenga utilidad para ayudar a liberar el suministro existente o en situaciones de vida o muerte cuando no hay otra opción.

Además, cualquier sistema de ventilación de bajo costo debe tener mucho cuidado con respecto a proporcionar a los médicos la capacidad de controlar y monitorear de cerca el volumen corriente, la presión inspiratoria, las ppm y la relación I / E, y poder brindar apoyo adicional en forma de PEEP, Monitoreo PIP, filtración y adaptación a parámetros individuales del paciente. Reconocemos, y nos gustaría resaltar para cualquiera que busque fabricar un ventilador de emergencia de bajo costo, que no considerar adecuadamente estos factores puede provocar lesiones graves o la muerte a largo plazo.

![MIT E-vent Unit 002 setup](../../img/mit-e-vent-unit-002-setup.jpg)



## Diseño de código abierto
En la actualidad, estamos produciendo cuatro conjuntos de material, que lanzaremos y actualizaremos en este sitio de manera de código abierto:

1. Funcionalidad mínima segura del ventilador basada en orientación clínica
2. Diseño de hardware de referencia para cumplir con los requisitos clínicos mínimos
3. Estrategias de control de referencia y diseños electrónicos y conocimientos de apoyo.
4. Resultados de las pruebas en modelos animales.

Estamos lanzando este material con la intención de proporcionar a aquellos con la capacidad de fabricar o fabricar ventiladores, las herramientas necesarias para hacerlo de una manera que busque garantizar la seguridad del paciente. Los médicos que visitan este sitio pueden proporcionar información y experiencia e informar sobre sus esfuerzos para ayudar a sus pacientes.

Al igual que con cualquier investigación para diseñar, escalar y fabricar, anticipamos que habrá muchos problemas y nuestro objetivo es proporcionar este sitio como una herramienta para "cerrar el círculo" y recibir comentarios. También haremos todo lo posible para publicar la información más relevante en el foro de discusión para que todos la vean.

Invitamos a cualquier persona interesada a seguir este trabajo.


