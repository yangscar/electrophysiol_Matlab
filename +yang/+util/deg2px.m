function pixel = deg2px(degree)
% Transfer degree to pixel according to screen distance and screen size
% ====
% Input >>
% Num: visual angle in degrees
% ====
% Last md: 2013-6-24, WY
% FIXED: matrix shape
global CV
screen_distance_mm =  yang.get.screenDistance;
% pixel=crsDegreesToPixels(degree);
deg_size=size(degree);
if length(degree)==1
    
    Width = crsGetScreenWidthPixels;                 %get the width pixels of screen
    %Height = crsGetScreenHeightPixels;               %get the heigh pixels of
    SCREEN_WIDTH=CV.SCREEN_WIDTH_MM;
    %SCREEN_WIDTH=400.252;%mm
    %SCREEN_HEIGHT=320.202;%mm
    pixel=tan(degree./2./180.*pi).*screen_distance_mm./SCREEN_WIDTH.*2.*Width;
    return;
else
    if deg_size(1)==1
    pixel=[Cus_Degree2Pixel(degree(1)),Cus_Degree2Pixel(degree(2:end))];
    else
    pixel=[Cus_Degree2Pixel(degree(1));Cus_Degree2Pixel(degree(2:end))];
    end
    
end