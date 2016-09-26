bad_files = dir('*_0.5_hz');

for ii = 1:length(bad_files)
   
    movefile(bad_files(ii).name, [bad_files(ii).name '.mat'])
    
end