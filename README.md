# BPSK-Modulation-and-Demodulation-with-PRN-Code-Synchronization

This repository contains MATLAB code for implementing a BPSK (Binary Phase Shift Keying) modulation and demodulation system with PRN (Pseudo-Random Noise) code synchronization. The PRN code is used to find the start of the transmitted signal in the receiver, even if the received signal has been time-scaled (contracted or expanded).

Table of Contents
Overview

Repository Structure

How It Works

Usage

Transmitter

Receiver

Dependencies

Results

Contributing

License

Overview
This project demonstrates a simple communication system using BPSK modulation and demodulation. The transmitter modulates binary data using BPSK and appends a PRN code at the beginning of the signal for synchronization. The receiver uses cross-correlation with the PRN code to find the start of the signal and demodulates the data. The system is robust to time scaling in the received signal.

Repository Structure
Copy
BPSK-PRN-Synchronization/
├── Transmitter/                # Transmitter code and resources
│   ├── transmitter.m           # MATLAB script for BPSK modulation
│   ├── generateGoldCode.m      # Function to generate PRN code
│   └── bpsk_modulate.m         # Function for BPSK modulation
├── Receiver/                   # Receiver code and resources
│   ├── receiver.m              # MATLAB script for BPSK demodulation
│   ├── bpsk_demodulate.m       # Function for BPSK demodulation
│   └── recorded_signal.wav     # Example recorded signal (optional)
├── README.md                   # Project documentation
└── LICENSE                     # License file
How It Works
Transmitter
Generates random binary data.

Appends a PRN code to the beginning of the data for synchronization.

Modulates the data using BPSK.

Broadcasts the signal using soundsc.

Receiver
Records the transmitted signal (or loads a pre-recorded signal).

Uses cross-correlation with the PRN code to find the start of the signal.

Resamples the received signal to handle time scaling (contraction or expansion).

Demodulates the BPSK signal to recover the original data.

Calculates the bit error rate (BER) to evaluate performance.

Usage
Transmitter
Open the transmitter.m script in MATLAB.

Set the parameters (e.g., carrier frequency, sampling frequency, data rate).

Run the script to generate and broadcast the BPSK-modulated signal.

The transmitted signal and parameters are saved in transmitted_signal.mat.

Receiver
Open the receiver.m script in MATLAB.

Load the recorded signal (e.g., recorded_signal.wav).

Load the transmitted signal parameters from transmitted_signal.mat.

Run the script to demodulate the signal and calculate the bit error rate.

Dependencies
MATLAB (tested on R2021a or later)

Signal Processing Toolbox (for resample and xcorr functions)

Results
The receiver successfully synchronizes with the transmitted signal using the PRN code.

The demodulated data is compared with the original data to calculate the bit error rate (BER).

Example output:

Copy
Original Data: [1 0 1 1 0 0 1 0 ...]
Demodulated Data: [1 0 1 1 0 0 1 0 ...]
Bit Error Rate: 0.02
Contributing
Contributions are welcome! If you find any issues or have suggestions for improvement, please open an issue or submit a pull request.

Fork the repository.

Create a new branch (git checkout -b feature/YourFeature).

Commit your changes (git commit -m 'Add some feature').

Push to the branch (git push origin feature/YourFeature).

Open a pull request.

License
This project is licensed under the MIT License. See the LICENSE file for details.

Acknowledgments
This project was inspired by digital communication systems and synchronization techniques.

Special thanks to the MATLAB community for providing excellent documentation and resources.
