function reward(reward_time_mm)
%This function give reward for about 1s.
%Input: reward time/1ms.
%time=35 => 0.06ml;
global reward_handle
data=[1*'@' 1*'G' 0  mod(reward_time_mm*10,256) floor(reward_time_mm*10/256) 0 0];
data=[data,mod(sum(data),256)];
fwrite(reward_handle,data,'uint8','async');

