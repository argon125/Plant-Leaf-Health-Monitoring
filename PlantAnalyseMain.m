clc;
clear all;
close all;

rgbImage = imread('C:\Users\arrun\Desktop\IMG1.jpeg');
rgbImage=im2double(rgbImage);

redChannel = rgbImage(:, :, 1);
greenChannel = rgbImage(:, :, 2);
blueChannel = rgbImage(:, :, 3);

z = zeros(size(rgbImage), class(rgbImage));

redImage = z; redImage(:,:,1) = redChannel;
greenImage = z; greenImage(:,:,2) = greenChannel;
blueImage = z; blueImage(:,:,3) = blueChannel;

figure
subplot(2,2,1); image(rgbImage);
subplot(2,2,2); image(redImage);
subplot(2,2,3); image(greenImage);
subplot(2,2,4); image(blueImage);


VI=(redChannel-blueChannel)./(redChannel+blueChannel);

figure
imshow(VI)
title("VI");