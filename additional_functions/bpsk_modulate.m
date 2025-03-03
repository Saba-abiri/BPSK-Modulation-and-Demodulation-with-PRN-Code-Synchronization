function modulated_signal = bpsk_modulate(data, fc, fs, data_rate)
    % BPSK Modulation
    t = 0:1/fs:(1/data_rate - 1/fs); % Time vector for one bit
    carrier = cos(2 * pi * fc * t); % Carrier signal
    modulated_signal = [];
    for i = 1:length(data)
        if data(i) == 1
            modulated_signal = [modulated_signal, carrier];
        else
            modulated_signal = [modulated_signal, -carrier];
        end
    end
end
