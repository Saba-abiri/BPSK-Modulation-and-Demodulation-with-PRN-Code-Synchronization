# 📡 BPSK Modulation and Demodulation with PRN Code Synchronization

This repository contains MATLAB code for implementing a BPSK (Binary Phase Shift Keying) modulation and demodulation system with PRN (Pseudo-Random Noise) code synchronization. The PRN code is used to find the start of the transmitted signal in the receiver, even if the received signal has been time-scaled (contracted or expanded). 🚀

## 📋 Table of Contents
1. [Overview](#overview)
2. [Repository Structure](#repository-structure)
3. [How It Works](#how-it-works)
4. [Usage](#usage)
   - [Transmitter](#transmitter)
   - [Receiver](#receiver)
5. [Dependencies](#dependencies)
6. [Results](#results)
7. [Contributing](#contributing)
8. [License](#license)

---

## 🌟 Overview
This project demonstrates a simple communication system using BPSK modulation and demodulation. The transmitter modulates binary data using BPSK and appends a PRN code at the beginning of the signal for synchronization. The receiver uses cross-correlation with the PRN code to find the start of the signal and demodulates the data. The system is robust to time scaling in the received signal. 📶

---

## 🗂 Repository Structure
```
BPSK-PRN-Synchronization
├── Transmitter/                # Transmitter code and resources
│   ├── transmitter.m           # MATLAB script for BPSK modulation
│   ├── generateGoldCode.m      # Function to generate PRN code
│   └── bpsk_modulate.m         # Function for BPSK modulation
├── Receiver/                   # Receiver code and resources
│   ├── receiver.m              # MATLAB script for BPSK demodulation
│   ├── bpsk_demodulate.m       # Function for BPSK demodulation.
│   └── recorded_signal.wav     # Example recorded signal (optional).
├── README.md                   # Project documentation.
└── LICENSE                     # License file.
```
---

## 🛠 How It Works
### 📤 Transmitter
1. Generates random binary data. 🎲
2. Appends a PRN code to the beginning of the data for synchronization. 🔗
3. Modulates the data using BPSK. 📡
4. Broadcasts the signal using `soundsc`. 🔊

### 📥 Receiver
1. Records the transmitted signal (or loads a pre-recorded signal). 🎤
2. Uses cross-correlation with the PRN code to find the start of the signal. 🔍
3. Resamples the received signal to handle time scaling (contraction or expansion). ⏳
4. Demodulates the BPSK signal to recover the original data. 📟
5. Calculates the bit error rate (BER) to evaluate performance. 📊

---

## 🚀 Usage

### 📤 Transmitter
1. Open the `transmitter.m` script in MATLAB. 💻
2. Set the parameters (e.g., carrier frequency, sampling frequency, data rate). ⚙️
3. Run the script to generate and broadcast the BPSK-modulated signal. 📡
4. The transmitted signal and parameters are saved in `transmitted_signal.mat`. 💾

### 📥 Receiver
1. Open the `receiver.m` script in MATLAB. 💻
2. Load the recorded signal (e.g., `recorded_signal.wav`). 🎧
3. Load the transmitted signal parameters from `transmitted_signal.mat`. 📂
4. Run the script to demodulate the signal and calculate the bit error rate. 📊
---
## 🎯 PRN Code Usage
In this project, the PRN (Pseudo-Random Noise) code is used for synchronization between the transmitter and receiver. The PRN code is appended to the beginning of the transmitted signal, and the receiver uses cross-correlation to detect the start of the signal. This ensures that the receiver can correctly demodulate the data, even if the received signal has been time-scaled (contracted or expanded).

### Key Roles of the PRN Code:
- **Synchronization**: Helps the receiver find the start of the transmitted signal.
- **Robustness**: Resistant to noise and interference, ensuring reliable detection.
- **Time Scaling Correction**: Allows the receiver to handle signals that have been stretched or compressed in time.
---

## 📦 Dependencies
- MATLAB (tested on R2021a or later) 🧮
- Signal Processing Toolbox (for `resample` and `xcorr` functions) 📚

---

## 📊 Results
- The receiver successfully synchronizes with the transmitted signal using the PRN code. ✅
- The demodulated data is compared with the original data to calculate the bit error rate (BER). 📈
- Example output:
Original Data: [1 0 1 1 0 0 1 0 ...]
Demodulated Data: [1 0 1 1 0 0 1 0 ...]
Bit Error Rate: 0.02


---

## 🤝 Contributing
Contributions are welcome! If you find any issues or have suggestions for improvement, please open an issue or submit a pull request. 🙌

1. Fork the repository. 🍴
2. Create a new branch (`git checkout -b feature/YourFeature`). 🌿
3. Commit your changes (`git commit -m 'Add some feature'`). 💾
4. Push to the branch (`git push origin feature/YourFeature`). 🚀
5. Open a pull request. 🔄

---

## 📜 License
This project is open-source under the **MIT License**. Feel free to use, modify, and contribute!  

---

## 🙏 Acknowledgments
- This project was inspired by digital communication systems and synchronization techniques. 📡
- Special thanks to the MATLAB community for providing excellent documentation and resources. 🧑‍💻
- This project was inspired by digital communication systems and synchronization techniques.
- Special thanks to the MATLAB community for providing excellent documentation and resources.
---
💡 **Developed by [Saba Abiri](https://github.com/Saba-abiri)** 🚀  
