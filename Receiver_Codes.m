% Receiver Code
clc; clear; close all;

% Load recorded data (replace with your recorded data)
uiopen('.\recordedwave44100.wav', 1);
recorded_signal = data(:)'; % Ensure it's a row vector

% Load transmitted signal parameters
load('transmitted_signal.mat', 'prn_code', 'fs', 'data');

% Parameters
fc = 1000; % Carrier frequency
data_rate = 100; % Data rate (bits per second)
prn_length = length(prn_code); % Length of PRN code
bit_duration = fs / data_rate; % Duration of one bit in samples

% Synchronize using PRN code
correlation = xcorr(recorded_signal, prn_code);
[~, max_index] = max(correlation);
start_index = max_index - length(recorded_signal) + 1;

% Verify synchronization
figure;
plot(correlation);
title('Cross-Correlation between Recorded Signal and PRN Code');
xlabel('Lag');
ylabel('Correlation');

% Extract the modulated data (including PRN code)
received_signal = recorded_signal(start_index:end);

% Resample received signal to handle time scaling
expected_length = length(prn_code) + length(data) * bit_duration;
received_signal = resample(received_signal, expected_length, length(received_signal));

% Remove PRN code
received_signal = received_signal(prn_length + 1:end);

% Demodulate BPSK signal
demodulated_data = bpsk_demodulate(received_signal, fc, fs, data_rate);

% Truncate demodulated data to match original data length
demodulated_data = demodulated_data(1:length(data));

% Display results
disp('Original Data:');
disp(data);
disp('Demodulated Data:');
disp(demodulated_data);

% Calculate bit error rate
bit_error_rate = sum(data ~= demodulated_data) / length(data);
disp(['Bit Error Rate: ', num2str(bit_error_rate)]);