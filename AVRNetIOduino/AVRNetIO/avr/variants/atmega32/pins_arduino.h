/*
This version of the pins_arduino.h file is for use
with the Pollin AVRNetIO board with ATMega32
Adapted January 2013/April 2014 by Markus Gebhard, Karlsruhe
*/

/*
pins_arduino.h - Pin definition functions for Arduino
Part of Arduino - http://www.arduino.cc/

Copyright (c) 2007 David A. Mellis

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General
Public License along with this library; if not, write to the
Free Software Foundation, Inc., 59 Temple Place, Suite 330,
Boston, MA  02111-1307  USA

$Id: wiring.h 249 2007-02-03 16:52:51Z mellis $
*/

#ifndef Pins_Arduino_h
#define Pins_Arduino_h

#include <avr/pgmspace.h>

// ATMEL ATMEGA32 with correspondind AVRNetIO connectors
//
//                              +---\/---+
//       Ext7    T0   D0  PB0 1 |        |40 PA0 AI0/D24 Eingang1/SubD10
//       J11     T1   D1  PB1 2 |        |39 PA1 AI1/D25 Eingang2/SubD11
//       ENC-INT INT2 D2  PB2 3 |        |38 PA2 AI2/D26 Eingang3/SubD12
//       Ext8    PWM  D3  PB3 4 |        |37 PA3 AI3/D27 Eingang4/SubD13
// ENC-SPI/ISP   SS   D4  PB4 5 |        |36 PA4 AI4/D28 ADC1
// ENC-SPI/ISP   MOSI D5  PB5 6 |        |35 PA5 AI5/D29 ADC2
// ENC-SPI/ISP   MISO D6  PB6 7 |        |34 PA6 AI6/D30 ADC3
// ENC-SPI/ISP   SCK  D7  PB7 8 |        |33 PA7 AI7/D31 ADC4
//                        RST 9 |        |32 AREF
//                        VCC 10|        |31 GND
//                        GND 11|        |30 AVCC
//                      XTAL2 12|        |29 PC7 D23     Ausgang8/SubD9
//                      XTAL1 13|        |28 PC6 D22     Ausgang7/SubD8
// MAX232-RX     RX0  D8  PD0 14|        |27 PC5 D21 TDI Ausgang6/SubD7
// MAX232-TX     TX0  D9  PD1 15|        |26 PC4 D20 TDO Ausgang5/SubD6
//     Ext1     INT0  D10 PD2 16|        |25 PC3 D19 TMS Ausgang4/SubD5
//     Ext2     INT1  D11 PD3 17|        |24 PC2 D18 TCK Ausgang3/SubD4
//      Ext3     PWM  D12 PD4 18|        |23 PC1 D17 SDA Ausgang2/SubD3
//      Ext4     PWM  D13 PD5 19|        |22 PC0 D16 SCL Ausgang1/SubD2
//      Ext5          D14 PD6 20|        |21 PD7 D15 PWM Ext6
//                              +--------+
//

/* following defines occur also in Arduino.h, thus redundant
#define NOT_A_PIN 0
#define NOT_A_PORT 0

#define NOT_ON_TIMER 0
#define TIMER0 1
#define TIMER1A 2
#define TIMER1B 3
#define TIMER2 4

#define PA 1
#define PB 2
#define PC 3
#define PD 4
***********************************************************/

const static uint8_t SS   = 4;
const static uint8_t MOSI = 5;
const static uint8_t MISO = 6;
const static uint8_t SCK  = 7;

static const uint8_t SDA = 17;
static const uint8_t SCL = 16;
static const uint8_t LED_BUILTIN = 1; // use the J11 jumper

static const uint8_t A0 = 0; // reflects the valid ADMUX values
static const uint8_t A1 = 1; // see wiring_analog.c - result as
static const uint8_t A2 = 2; // for ATmega644
static const uint8_t A3 = 3;
static const uint8_t A4 = 4;
static const uint8_t A5 = 5;
static const uint8_t A6 = 6;
static const uint8_t A7 = 7;

#define NUM_DIGITAL_PINS    32
#define NUM_ANALOG_INPUTS       8
#define analogInputToDigitalPin(p)  ((p < 8) ? (p) + 24 : -1)

#define digitalPinHasPWM(p)     ((p)==3 || (p) == 12 || (p) == 13 || (p)==15)

#ifdef ARDUINO_MAIN
// these arrays map port names (e.g. port B) to the
// appropriate addresses for various functions (e.g. reading
// and writing)
const uint16_t PROGMEM port_to_mode_PGM[] =
{
    NOT_A_PORT,
    (uint16_t) &DDRA,
    (uint16_t) &DDRB,
    (uint16_t) &DDRC,
    (uint16_t) &DDRD,
};

const uint16_t PROGMEM port_to_output_PGM[] =
{
    NOT_A_PORT,
    (uint16_t) &PORTA,
    (uint16_t) &PORTB,
    (uint16_t) &PORTC,
    (uint16_t) &PORTD,
};
const uint16_t PROGMEM port_to_input_PGM[] =
{
    NOT_A_PORT,
    (uint16_t) &PINA,
    (uint16_t) &PINB,
    (uint16_t) &PINC,
    (uint16_t) &PIND,
};
const uint8_t PROGMEM digital_pin_to_port_PGM[] =
{
    PB, // 0
    PB,
    PB,
    PB,
    PB,
    PB,
    PB,
    PB,
    PD, // 8
    PD,
    PD,
    PD,
    PD,
    PD,
    PD,
    PD,
    PC, // 16
    PC,
    PC,
    PC,
    PC,
    PC,
    PC,
    PC,
    PA, // 24
    PA,
    PA,
    PA,
    PA,
    PA,
    PA,
    PA  // 31
};
const uint8_t PROGMEM digital_pin_to_bit_mask_PGM[] =
{
    _BV(0), // 0, port B
    _BV(1),
    _BV(2),
    _BV(3),
    _BV(4),
    _BV(5),
    _BV(6),
    _BV(7),
    _BV(0), // 8, port D
    _BV(1),
    _BV(2),
    _BV(3),
    _BV(4),
    _BV(5),
    _BV(6),
    _BV(7),
    _BV(0), // 16, port C
    _BV(1),
    _BV(2),
    _BV(3),
    _BV(4),
    _BV(5),
    _BV(6),
    _BV(7),
    _BV(0), // 24, port A
    _BV(1),
    _BV(2),
    _BV(3),
    _BV(4),
    _BV(5),
    _BV(6),
    _BV(7)
};
const uint8_t PROGMEM digital_pin_to_timer_PGM[] =
{
    NOT_ON_TIMER, // 0  - PB0
    NOT_ON_TIMER, // 1  - PB1
    NOT_ON_TIMER, // 2  - PB2
    NOT_ON_TIMER, // OC0 3 - PB3: TIMER0 undefined
    NOT_ON_TIMER, // 4  - PB4
    NOT_ON_TIMER, // 5  - PB5
    NOT_ON_TIMER, // 6  - PB6
    NOT_ON_TIMER, // 7  - PB7
    NOT_ON_TIMER, // 8  - PD0
    NOT_ON_TIMER, // 9  - PD1
    NOT_ON_TIMER, // 10 - PD2
    NOT_ON_TIMER, // 11 - PD3
    TIMER1B,      // OC1B 12 - PD4
    TIMER1A,      // OC1A 13 - PD5
    NOT_ON_TIMER, // 14 - PD6
    TIMER2,       // OC2 15 - PD7
    NOT_ON_TIMER, // 16 - PC0
    NOT_ON_TIMER, // 17 - PC1
    NOT_ON_TIMER, // 18 - PC2
    NOT_ON_TIMER, // 19 - PC3
    NOT_ON_TIMER, // 20 - PC4
    NOT_ON_TIMER, // 21 - PC5
    NOT_ON_TIMER, // 22 - PC6
    NOT_ON_TIMER, // 23 - PC7
    NOT_ON_TIMER, // 24 - PA0
    NOT_ON_TIMER, // 25 - PA1
    NOT_ON_TIMER, // 26 - PA2
    NOT_ON_TIMER, // 27 - PA3
    NOT_ON_TIMER, // 28 - PA4
    NOT_ON_TIMER, // 29 - PA5
    NOT_ON_TIMER, // 30 - PA6
    NOT_ON_TIMER  // 31 - PA7
};
#endif
#endif
