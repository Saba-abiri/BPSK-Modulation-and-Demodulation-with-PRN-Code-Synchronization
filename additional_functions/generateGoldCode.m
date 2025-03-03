function sync_code = generateGoldCode(length)
    % Generate a Gold code (example implementation)
    % Replace this with a proper Gold code generator if needed
    sync_code = randi([0 1], 1, length);
    sync_code(sync_code == 0) = -1; % Convert 0 to -1 for BPSK
end