clc
clear

img = imread("Test Images\05_test.tif");
subplot(1,3,1);
imshow(img)
title("Input Image", FontSize=18)

imgEnhanced = enhanceMyimage(img);

subplot(1,3,2);
imshow(imgEnhanced)
title("Enhanced Image", FontSize=18)

imgSegmented = CoyeFilter(imgEnhanced);
imgFinal = thresholdWhiteBlack(imgSegmented, 30);

subplot(1,3,3);
imshow(imgFinal)
title("Segmented Vessels", FontSize=18)