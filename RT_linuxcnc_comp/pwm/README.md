this component initialise a 2 pwm output per channel  using up/down type :

Two output pins, up and down.
For positive inputs, the PWM/PDM waveform appears on up, while down is low.
 For negative inputs, the waveform appears on down, while up is low.
 Suitable for driving the two sides of an H-bridge to generate a bipolar output.


and 1 gpio for enable output.
( at this time, no gpio RT driver is written... to be done in order to deacrease execution time)
