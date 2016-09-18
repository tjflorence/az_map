clear all 
close all
delete(instrfind)
imaqreset
daqreset

%% experiment level settings
%  names
expi.settings.name       = 'OL_stim';
expi.settings.geno       = 'test';
expi.settings.notes      = '660'; 
expi.settings.age        = 4;
expi.settings.date       = datestr(now, 'yyyymmddHHMMSS');
expi.settings.fname      = [expi.settings.date '_' expi.settings.geno '_' ...
                                expi.settings.name];
expi.settings.savedir    = 'C:\hot-dir\';
% parameters
expi.settings.rot_gain       = .4;
expi.settings.fwd_gain       = 1;
expi.settings.hz             = 50; 
expi.settings.num_reps       = 3;

expi.settings.light_power    = [-4.99];
expi.settings.trial_time     = expi.settings.prestim_time+expi.settings.ref_stim_time+expi.settings.poststim_time;

expi.settings.ball_diameter = 9;  
expi.settings.ticks_per_mm = 3.5;
expi.settings.ticks_per_deg = (expi.settings.ball_diameter)*pi*expi.settings.ticks_per_mm/360;
expi.camera.do_capture = 0;

%% generate stimulus control
expi.stim_struct = generate_az_map_stim_struct() ;

% randomize order 
exp_order = [];
for ii = 1:expi.settings.num_reps

    exp_order = [exp_order randperm(length(expi.settings.stim_struct))];
    
end
expi.settings.exp_order = exp_order;

% 

vi_m = videoinput('pointgrey', 1);
vi_l = videoinput('pointgrey', 2);
 
prev_vi_l = preview(vi_l);
prev_vi_m = preview(vi_m);

disp('*************************')
disp('*************************')
disp('align fly on ball, then hit space')
disp('reset panel host gui')
disp('*************************')
disp('*************************')
pause()
 
closepreview(vi_l);
closepreview(vi_m);

expi.settings.m_view = getsnapshot(vi_m);
expi.settings.l_view = getsnapshot(vi_l);

%% set up folder
cd(expi.settings.savedir)
mkdir(datestr(now, 'yyyy-mm-dd'))

cd(datestr(now, 'yyyy-mm-dd'))
mkdir(expi.settings.fname)
cd(expi.settings.fname)
expi.settings.fullpath = pwd;

%% save expi do C:\, so other instance can load
save('C:\meta_expi.mat', 'expi')

%% initialize cxn to panel host
init_tcp();
%Panel_tcp_com('set_pattern_id', [1])
%Panel_tcp_com('stop')

%% initialize daq 
app.ao = daq.createSession ('ni');
app.ao.addAnalogOutputChannel('Dev1', [0 1 2 3], 'Voltage');
app.ao.addDigitalChannel('Dev1', 'Port1/Line0:2', 'OutputOnly');
app.ao.outputSingleScan([0 0 0 -4.99 0 0 0])

%% init screen and render properties
trial_num = 1;
fix_aligned = 0;
aligned_trial = 0;

%% get ready!
disp('paused - hit space to continue')
pause

%% start acquisition
app.ao.outputSingleScan([-4.99 0 0 -4.99 0 0 0])

%% now run trials
f1 = figure('color', 'w', 'position', [27 607 727 380]);
%for aa = 1:length(expi.settings.exp_order)
for aa = 1:length(expi.settings.exp_order)
    
    c_stim_num = expi.settings.exp_order(aa);
    c_stim_struct = expi.settings.stim_struct(c_stim_num);
   
    %% BRIEF
    disp('*************************************')
   
    disp(['rep ' num2str(aa) ' of '  num2str(length(expi.settings.exp_order))])
    
    expi = init_memory(expi);
        expi.c_trial.initial_th     = 180;
        expi.c_trial.stim_name      = c_stim_struct.name;
        expi.c_trial.trial_time     = c_stim_struct.time;
        expi.c_trial.full_stim_info = c_stim_struct;
        expi.c_trial.stim_id        = c_stim_num;
        expi.c_trial.rep_num        = aa;
        expi.c_trial.pat            = c_stim_struct.pat_id;
        expi.c_trial.xpos_vec       = c_stim_struct.xpos_vec;
        expi.c_trial.ypos_vec       = c_stim_struct.ypos_vec;
        
    disp(['rep ' (num2str(aa)) ' REF: '  expi.c_trial.ref_name ...
                                        ' TEST: ' expi.c_trial.test_name ]);

    expi.c_trial.name = ['env_rep_' num2str(aa, '%03d')...
                            '_type_' num2str(c_stim_num, '%03d')...
                            '_viz_' expi.c_trial.name ];
    
    Panel_tcp_com('set_pattern_id', expi.c_trial.pat)
    Panel_tcp_com('all_off')
    
    disp([  expi.c_trial.name ])                               
    disp(['pausing '])
    disp(['current trial will require: '])
    disp(num2str(expi.c_trial.trial_time))
    disp('hit space to trigger')
    
    %% run exp trial

    expi = run_OL_viz_map_v1_trial(expi, app);
	Panel_tcp_com('all_off')
    app.ao.outputSingleScan([-4.99 0 0 -4.99 1 0 0])
    
    cval = ['rkb'];
    plot(expi.c_trial.data.om, 'Linewidth', 2, 'color', 'r');
    hold off
  
 end
  
close_tcp();
app.ao.outputSingleScan([-4.99 0 0 -4.99 1 0 0])

copyfile('C:\MatlabRoot\az_pl\experiment\run_OL_viz_map_v1_experiment.m', expi.settings.fullpath)
copyfile('C:\MatlabRoot\az_pl\experiment\run_OL_target_multisensory_trial.m', expi.settings.fullpath)
copyfile('C:\MatlabRoot\az_pl\experiment\generate_targeted_multisensory_stimulus_struct.m', expi.settings.fullpath)

cd('C:\')