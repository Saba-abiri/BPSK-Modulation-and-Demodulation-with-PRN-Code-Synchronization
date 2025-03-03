function prn_code = generateGoldCode(length)
    % Generate a Gold code (example implementation)
    % Replace this with a proper Gold code generator if needed
    prn_code = randi([0 1], 1, length);
    prn_code(prn_code == 0) = -1; % Convert 0 to -1 for BPSK
end