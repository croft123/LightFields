close all;
clear all;
clc;
%%%%%%%%%%%%%%%%%%

-2:0.5:1
%load('LightField4D.mat');
workingDir = 'C:\HomeWork&Project\CS684\LightFields_MALTAB\LightFields-master\Alice';
lightField = CreateLightField(workingDir,4,8,2448,3264);


drawLightField4D(lightField);
[Iout lightField] = refocusLightField(lightField,-2);
figure
imshow(Iout);
animateLightField
  
  
  
  
  
  
  
  
  
  
  
