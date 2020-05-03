# Controls and Electrical

Updated 25 March 2020

This section provides a description of the system architecture, the control strategy and the underlying logic. All ventilation requires a clinician in the loop to titrate parameters, in response to direct observation of patient physiology. The earliest successful ventilators had limited parameters and we aim to replicate this, with specificity to COVID-19.

Ambu bags are readily available and provide a convenient means to connect to an intubated patient and deliver ventilation. However:

Ambu bags have limited safeties beyond a pop-off valve for pressure release and a PEEP that is set manually. Any ventilator design must incorporate pressure sensing and actively monitor both peak and plateau pressures. Peak pressure exceeding 40 cm H2O (or a pressure set just below the pop-off pressure of the selected bag) must trigger an alarm.

 All decisions are being made on the basis of safety and minimizing complexity, which sometimes means omitting features. Please reference our other documents for more information on these tradeoffs. 

This is a living design and will continue to be updated as we receive more information and learn from our ongoing testing.

## Modes
In the interest of simplicity and ease of use our prototype system has only two modes of operation:

### Mode 1 – Volume Control (VC) 
 Clinician selected breaths are delivered at a constant rate automatically, with pressure monitoring only for safety. VC is only suitable for sedated and paralyzed patients. Tidal Volume, BPM and I:E are set as per clinical guidance.

### Mode 2 – Assist Control (AC) 
When the patient tries to breathe in, the pressure sensor will see a pressure drop, and the machine will begin squeezing the bag in order to assist in the breath. (Because the compression is triggered by the patient’s breath, the machine will be operating in sync with the patient’s natural breathing.) In AC mode the desired BMP is set slower than the patient’s expected breath rate. This sets a timer that is reset each time a patient takes a self-initiated breath. If the timer runs out the system initiates a breath.

*Activation of the assist control must trigger an alarm to indicate that a patient is not self breathing.*

***Caution: Assist control has not yet been tested in a porcine model due to the additional complexity and failure modes.***

- Controllable Parameters
- Breaths per minute (BPM)
- Tidal volume (TV)
- Inspiration to Expiration ratio (I:E)
- Trigger pressure (only active in AC mode)


