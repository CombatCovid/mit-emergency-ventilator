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

# Mechanical design

 How does the E-vent looks like?

 See how the [emergency ventilator works here](https://e-vent.mit.edu/wp-content/uploads/2020/03/002-bench-testing-scaled-1.mp4)

 

## Files to download

Follow this [link](C:\Users\linigodelacruz\Documents\CoViD-19\mit-emergency-ventilator\src) where there are all the .dxf files.


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

![Gear strain for actuating arms](../../img/gearstrain-for-actuating-arms.png)
![device-003](../../img/device-side-view.jpg)
![device-002](../../img/device-side-view-with-bag.jpg)
![device-001](../../img/device-001.jpg)
![Bag exposed design](../../img/design-bag-exposed.jpg)

![Plates to support the bag](../../img/bag-support-plates.jpg)

![Unit 002-most updated design](../../img/mit-e-vent-unit-002-setup.jpg)


### Early design (Unit 001)

An early prototype unit is show below in laser cut acrylic. Unit 001 was similar and underwent testing. Unit 002 been fabricated with an 80/20 metal frame, to address durability and maximise flexibility during testing, is undergoing testing today.

The collection of pictures from early designs are found [in this folder](C:\Users\linigodelacruz\Documents\CoViD-19\mit-emergency-ventilator\img\early-design-001)

# Electrical Design

This section shows a description of the minimum hardware set required to control the ventilator as described in the other documentation.

![Electrical System Architecture](../../img/Electrical-System-Architecture-2.jpg)

## Motor & Encoder

The mechanical system should be driven with a motor under closed loop control. For feedback measurement, we are using a quadrature encoder on the motor, and a potentiometer (POT) on the moving arms to measure the absolute angle.

### Motor Options: 

Brushed DC motor with gearbox and position feedback. Any sufficiently high-torque, back-driveable motor with angle sensing, integrated or separated, should work. Power is estimated at 36 W or greater, with a safety factor recommended.

***Caution: If a stepper motor is used, position should still be taken from the angle sensor so that missed steps do not cause position drift***

***Caution: The motor and mechanism, together, must be back drivable in order to move the mechanism by hand, remove the bag and immediately convert to manual bagging.***

- Assumed nominal operating parameters: Referencing clinical documentation: max 25 breath-per-minute (bpm), and up to a 1:3 Inspiration: Expiration Ratio (I:E ratio) (ex: bag squeezed for 1 time units, bag relaxed for 3 time units). Note that COVID-19 patients may need greater I:E ratios.

- Prototype component: [Andy Mark AM 2971 gearmotor](https://sites.google.com/site/frc5064/parts/motors-and-gearboxes/-pg71-planetary-gearbox-with-rs775-motor-and-encoder). 

    ![Andy Mark AM 2971 gearmotor](../../img/gear-motor.png)

  This was scavenged from a FIRST Robotics kit, it is suitable for testing, **but has not been proved for safe longer-term use. Builders will need to source another motor.**

While the machine should be capable of operating continuously at max tidal volume and max bpm, in practice medical professionals often do not operate with large tidal volume and high bpm simultaneously. In normal operation, I:E ratios around 1:2 and 12 bpm are a decent central design point. Tidal volume as a function of position needs to be calibrated.

***Caution: In deployed use, the motor must be able to operate continuously for several days, 100% duty cycle. This may require larger motors than expected or increased motor cooling to prevent overheating.***

## Power Supply

Nominally, a power supply that can deliver 12 V and 5 A is expected to work. Rapid deceleration of the motor causes supply-voltage spikes and must be avoided via correct motor motion profile design. Capacitors should be added across the H-Bridge power leads for extra protection. 

An alternate power supply would be to use a car battery with a 5 A car battery charger connected. This will allow for very high instantaneous power draws and voltage spike absorption. The battery will double as a ~2-3 hour backup in case of building power loss.

## Controller

Microcontroller for timing, measuring, and actuating: [Arduino Uno](https://www.arduino.cc/en/Guide/ArduinoUno) – readily available and easy to program, with extensive online support and documentation. It provides 6 A/D pins (for potentiometers and pressure sensors) and 13 digital I/O pins, including dedicated hardware interrupts (for encoders) and PWM pins for H-bridge driving. Other industry validated controllers can be used, and we may implement them in the future.
    ![Arduino Uno](../../img/arduino-uno.png)

## Motor Driver

Use any motor driver with sufficient voltage and current ratings to meet the motor power specifications. Closed loop servo controllers can also be employed. Our control strategy is PWM with a H Bridge. For fastest implementation using cheap, off-the-shelf parts, we recommend an Arduino compatible motor shield.

For reference, we are using a [RoboClaw Solo motor controller](https://www.pololu.com/product/3290) to control a brushed DC gear motor. The RoboClaw firmware uses a velocity PID controller and a position PID controller to command the motor to a desired position at a desired velocity. The PID values must be tuned in advance. Other motor controllers with similar functions will work, we do not recommend any specific controller.

  ![RoboClaw Solo motor controller](../../img/roboclaw-motor-controller.png)

## Inputs

Control knob potentiometers (POTs) should all be single turn, 10 K$\Omega$. Single turn is to allow for specific settings to be marked on the face plate.

Pressure sensor – Receives a voltage proportional to the pressure in the patient’s lungs. Used to determine max pressure reached during inspiration, and to trigger when the patient is attempting to breathe in during assist mode. Pressure sensor selected should be differential (to sense negative pressures) with a range of up to 100 cm H$_2$O. This is a 2x safety factor. Our sensors are sourced from Honeywell.

***Note on Plumbing: The pressure sensor must be connected to the Ambu bag’s sensing port or somewhere in the airflow, as close as possible to the patient, past any valves.***

**POT 1** – Varies inspired volume, sets angular oscillation of the arms. During operation, each arm varies by a maximum of approximately 20 grades, corresponding to fully squeezing a large bag. This dial varies position from 0% (fully open) to 100% (fully compressed).

**POT 2 **– Varies the BPM. This sets the rate from 0 to the maximum BPM given in the clinical document.

**POT 3** – Varies the I:E ratio. Range as given in the clinical document.

Note: It is not essential that this be settable, one value greater than 1:1 can be selected and the POT repurposed as a threshold for over pressure. (Multiple clinicians have indicated that varying I:E is not critical.)

**POT 4**– Sets the pressure threshold for detecting assist control. This varies as described in the clinical document.

Pushbutton Switch – Confirms user selection of new POT setting. This is an important safety.

Switch – Power on / off

E-stop – Instantly deactivates the system.

Switch – Mode selection from volume to assist control.

Limit Switch – Used for homing the arms positions.

## Output

LCD screen displays airway pressure in cm H2O. Other functions can be incorporated later. We are using a 20×4 character LCD display as this will display the minimum information, described in under interface. Any display better than this will be sufficient.

Audible alert buzzer will identify multiple fault conditions.