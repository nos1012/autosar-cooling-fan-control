% Mục đích: Kiểm tra các Toolbox bắt buộc cho dự án

disp('--- KIỂM TRA MÔI TRƯỜNG MATLAB & SIMULINK ---');

required_toolboxes = {
    'Simulink', ...
    'AUTOSAR Blockset', ...
    'Simulink Support Package for Arduino Hardware'
    };

installed_toolboxes = ver;
installed_names = {installed_toolboxes.Name};

for i = 1:length(required_toolboxes)
    tb = required_toolboxes{i};
    if any(strcmp(installed_names, tb))
        fprintf('[OK] Đã cài đặt: %s\n', tb);
    else
        fprintf('[LỖI] THIẾU: %s\n', tb);
        if strcmp(tb, 'Simulink Support Package for Arduino Hardware')
            fprintf(' -> Hãy vào tab Home -> Add-Ons -> Get Hardware Support Packages để cài đặt.\n');
        end
    end
end
disp('---------------------------------------------');