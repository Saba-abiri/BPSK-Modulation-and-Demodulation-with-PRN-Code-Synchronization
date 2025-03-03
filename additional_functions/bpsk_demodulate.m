function demodulated_data = bpsk_demodulate(signal, fc, fs, data_rate)
    % BPSK Demodulation
    t = 0:1/fs:(1/data_rate - 1/fs); % Time vector for one bit
    carrier = cos(2 * pi * fc * t); % Carrier signal
    demodulated_data = [];
    for i = 1:length(signal) / length(carrier)
        segment = signal((i-1)*length(carrier) + 1:i*length(carrier));
        correlation = sum(segment .* carrier);
        if correlation > 0
            demodulated_data = [demodulated_data, 1];
        else
            demodulated_data = [demodulated_data, 0];
        end
    end
end