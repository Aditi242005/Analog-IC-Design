# Analog-IC Design 
This repository documents my summer-internship project of Analog Integrated-Circuit Design under the mentorship of **Dr. Saroj Rout** in Silicon University, conducted in June,2025 . 
# **COURSE OUTCOME**

- Design of Analog-IC using electronic system.
- Deriving all the IC specifications using the circuit Analysis.
- A good understanding of MOS devices and Technology.
- Proficiency in analog circuit and design analysis.
- Having a good mastery in some tools--ngspice, xschem, magic.

# **COURSE DETAILS**
**Introduction to an electronic system design MEMS Microphone.**
- Microphone pre-amplifier and interface circuit design.
- Select an widely available Op-Amp for the preamplifier e.g. TI OPA 344
- Derive the important specs for the CMOS Op-Amp design.
- Derive also all the specs for the circuit Design and analysis.

**Introduction to linear circuits and passive devices.**
- Understanding passive devices (RLC) using basic EM principles.
- Principle of linearity and superposition
- Network analysis: KCL, KVL, Thevenin, Norton, Superposition.
- Emphasis on interfacing circuits and power transfer principle.

**Introduction to the Fundamentals**
- Understanding the BJT fundamentals.
- Understanding of MOS Transistor.
- Understanding the Semiconductor IC Devices.
 
# **USB Microphone System**  
  
<img width="1280" height="666" alt="image" src="https://github.com/user-attachments/assets/c14fc0df-1173-4adb-9ff0-ae5f2e886b30" />

**USB Microphone Teardown**
  
<img width="1280" height="557" alt="image" src="https://github.com/user-attachments/assets/892a23a7-fee2-4049-8692-ac9c50cdeb39" />


* [MEMS Capacitive Microphone Datasheet](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf) 

* [OPA344 OpAmp Datasheet](https://www.ti.com/lit/ds/symlink/opa345.pdf)
 
# **THEVENIN MODEL of MICROPHONE** 
  
 **Key Components:**
* Vnmic (AC Source): Represents the small signal output of the MEMS microphone due to sound pressure.
* R1 (Series Resistor): Models the internal resistance of the microphone (Thevenin resistance).
* C1, C3 (Coupling Capacitors): Block DC and pass the AC audio signal.
* E1 (Buffer Stage): A voltage-controlled voltage source (VCVS) providing impedance isolation.
* V2 (Bias Voltage): Sets the common-mode voltage (Vcm) at 1.5V for AC analysis.
* R3 (Load Resistor): Represents the input resistance of the subsequent amplifier stage.
<img width="1586" height="820" alt="image" src="https://github.com/user-attachments/assets/6a1f5100-e6ce-44df-8246-a89fa83337c2" />

- Sensitivty: -44 dBV/Pa
- Condition: 94 dB SPL at 1 kHz which is sound pressure of 1 Pa
- Normal voice conversation is typically 60 dB SPL
- **Vth Calculation**
  - Voice (Pa) = $10^{(60-94)/20} = 19.9\times 10^{-3} Pa$
  - Output (Vpk) = $\sqrt{2}\times V_{rms} = \sqrt{2}\times 19.9\times 10^{-3} Pa \times 10^{-44/20} = 178 \mu Vpk$
  - **$V_{out-pk} = 0.178~ mV$**
- **Rth** (from datasheet) = 380 ohms
  
  # **Microphone AFE Analysis**  
  <img width="2159" height="2289" alt="image" src="https://github.com/user-attachments/assets/90932328-a7a9-445a-b290-16c8e438a8f3" />
  
  # **THEVENIN EQUIVALENT using OP-AMP**
  - The Circuit demonstrates a practical application of Analog Design Principle
  
  <img width="1905" height="946" alt="image" src="https://github.com/user-attachments/assets/989b4d25-a221-4a3b-9a05-32e5d3c783f4" />

  # **OP-AMP**
  - An Operational Amplifier, or Op-amp for short, is fundamentally a voltage amplifying device designed to be used with external feedback components such as resistors and capacitors between its output and input terminals.

  **Schematic of OP-AMP Model**
  
  <img width="1848" height="872" alt="image" src="https://github.com/user-attachments/assets/4ddc74f0-dbf9-41d5-ae7f-c6189bc38170" />

  **Symbol of OP-AMP Model**
   
  <img width="763" height="577" alt="image" src="https://github.com/user-attachments/assets/a95bce58-e681-4acf-b04c-d08974cbb2a6" />

  # **Simple RC High Pass Filter**

  <img width="1918" height="1025" alt="image" src="https://github.com/user-attachments/assets/67c61d51-037f-4590-af84-3f8726bac802" />

  # **Current Mirror Circuit**
  - The circuit is used to copy the flow of current in one active device and controlling the flow of current in another device by maintaining the output current stable instead of loading .

  <img width="1693" height="880" alt="image" src="https://github.com/user-attachments/assets/a384071a-04d7-4f84-9009-f29cd2ed5e47" />

  # **Small Signal Analysis**
  - Devices like BJTs or MOSFETs have non-linearly but when the input signal is small, we can approximate the device as linear around its operating point. This approximation is known as Small Signal Analysis.

  <img width="1896" height="876" alt="image" src="https://github.com/user-attachments/assets/9489121c-cd04-40e9-8bb6-59d94c45e5d0" />

  # **Waveform of MEMS Microphone**

  ![WhatsApp Image 2025-08-02 at 11 55 25 PM](https://github.com/user-attachments/assets/b197f9b0-6812-4623-bc91-69bc833e06a6)



  




