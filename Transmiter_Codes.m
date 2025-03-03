% Transmitter Code
clc; clear; close all;

% Parameters
fs = 44100; % Sampling frequency
fc = 1000; % Carrier frequency
data_rate = 100; % Data rate (bits per second)
sync_length = 63; % Length of Sync code (e.g., 63-bit Gold code)
data_length = 100; % Length of data bits
t = 0:1/fs:(1/data_rate - 1/fs); % Time vector for one bit

% Generate random data
data = randi([0 1], 1, data_length);

% Generate Sync code (example: Gold code)
sync_code = generateGoldCode(sync_length);

% Modulate data with BPSK
modulated_data = bpsk_modulate(data, fc, fs, data_rate);

% Add Sync code at the beginning for synchronization
tx_signal = [sync_code, modulated_data];

% Normalize signal for soundsc
tx_signal = tx_signal / max(abs(tx_signal));

% Broadcast the signal using soundsc
soundsc(tx_signal, fs);

% Save the transmitted signal for testing
save('transmitted_signal.mat', 'tx_signal', 'fs', 'sync_code', 'data');