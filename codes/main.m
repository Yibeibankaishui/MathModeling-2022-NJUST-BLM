% 主函数

n_sim = "10" ;    % simulation times, max 200
t_simulate = "180" ;    % time for simulation in days
input_folder = "./Model_Omicron_China/INPUT_SH" ;    % input folder for parameters
t_epistart = "457" ;    % start date of epidemic, "457" indicates "2022-03-01"
n_initialinfectors = "20" ;    % initial infectors introduced
R0 = "3.9" ;    % reproduction number
booster_target = "18p" ;    % target booster age-group
booster_regimen = "Inactivated" ;    % booster vaccination type
booster_supply = "5000000" ;    % booster supply since epidemic
booster_acceptance = "0.9" ;    % rate for people accept to have booster shot
drug_uptake = "0" ;    % proportion of drug uptake
drug_effect = "0.8" ;    % effectiveness for drug
cm = "baseline" ;    % contact matrix setting
sus_type = "hetero" ;    % susceptibility setting
kappa = "1" ;    % infectivity for asymptomatic cases
GT = "L" ;    % rate for transmission setting, include generation time
RNG_seed = "1" ;    % seed for random number generator, must be an int
VE_setting = "OPT_ONE" ;    % VE setting, see table above for "INPUT_CN"
limits4elderly = "YES" ;    % limits for vaccination for elderly
prob_folder = "SA" ;    % folder name for probability parameter
save_prefix = "./Model_Omicron_China/OUTPUT/OPT=school_close_SH" ;    % save path prefix
asymp_scale = "0.15" ;    % adjusted ratio for asymptomatic cases
delta_infection = "0" ;    % proportion for prior delta_infection
cmd = '/Users/yibeibankaishui/Desktop/MathModeling-2022-NJUST-BLM/codes/Model_Omicron_China/SEIRS';

str = [cmd n_sim, t_simulate, input_folder, t_epistart, n_initialinfectors, R0, booster_target, booster_regimen,... 
    booster_supply, booster_acceptance, drug_uptake, drug_effect, cm, sus_type, ...
    kappa, GT, RNG_seed, VE_setting, limits4elderly, prob_folder, save_prefix, ...
    asymp_scale, delta_infection];

command = join(str);
% disp(command);

[status,cmdout] = system(command);

