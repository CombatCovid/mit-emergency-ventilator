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

# How does the E-vent looks like?

 See how the [emergency ventilator works here](https://e-vent.mit.edu/wp-content/uploads/2020/03/002-bench-testing-scaled-1.mp4)

 

## Files to download

Follow this [link](C:\Users\linigodelacruz\Documents\CoViD-19\mit-emergency-ventilator\src\MITeVentDXFs\DXFs-For-Website) where there are all the .dxf files .


**This section documents the mechanical design of the MIT E-Vent.**

***Please understand that we are designing, testing and posting information as fast as we can. We have no hidden information and more detailed plans will post as soon as we draw them!***

**Note:** Any mechanical design must meet the specifications outlined in the [Getting started section](./02-Getting-started.md).

***This is a prototype.*** We are in process of testing and refining this concept design to increase robustness. The basic concept consists of two arms that gently close in sync to compress the bag. This must be coupled with a closed loop control system. Major mechanical design requirements included:

- Be nice to your bag and its hoses! Up to 2x7x24X60x30 = 604,800 cycles.
- Fail-Safe operation! If the machine fails, a clinician must be able to convert to manual bagging.
- Keep It Simple & Make It Super! Enable others to fabricate.
- Many drive motor possibilities! Enable multiple motors and configurations.

The [Units version 002](../../img/mit-e-vent-unit-002-setup.jpg) shown here were developed to maximize flexibility during testing, so that the bag and motor position could be adjusted. None of this adjustability is needed once a particular bag is selected.

The basic dimensions are now set and any skilled mechanical designer will be able to execute this design and adjust it to suit locally available materials and fabrication technologies. 

We have ready access to waterjet and laser cutters and 80/20 components, however these parts can be CNC milled and bolted and welded to your specification

## Documentation useful pictures

***Caution: Forces and torques are much higher than expected when an Ambu bag is connected to a human respiratory system pressures can range up to 40 cm H2O and, potentially, even higher depending on breath rate. There must be a pressure release valve set at 40 cm H2O; without this higher pressures will risk permeant injury or death. Diseased lungs can have compliance on the order of 10x lower than that of healthy patients and this further compounds the problem.***

![](../../img/gearstrain-for-actuating-arms.png)
![](../../img/device-side-view.jpg)
![](../../img/device-side-view-with-bag.jpg)
![](../../img/device-001.jpg)
![](../../img/design-bag-exposed.jpg)

![Plates to support the bag](../../img/bag-support-plates.jpg)

![Unit 002-most updated design](../../img/mit-e-vent-unit-002-setup.jpg)


### Early design (Unit 001)

An early prototype unit is show below in laser cut acrylic. Unit 001 was similar and underwent testing. Unit 002 been fabricated with an 80/20 metal frame, to address durability and maximise flexibility during testing, is undergoing testing today.
