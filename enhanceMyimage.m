function [outputImage] = enhanceMyimage(inputImage)
    
    % Check if the input image is indeed an RGB image
    if size(inputImage, 3) ~= 3
        error('Input image must be an RGB image');
    end
    
    % Split the image into its Red, Green, and Blue components
    [R, G, B] = imsplit(inputImage);

    % enhancing the contrast of image
    R = imadjust(R);

    % Combine the transformed components back into an RGB image
    outputImage = cat(3, R, G, B);

    %sharpening the image
    outputImage = imsharpen(outputImage,'Radius', 4, 'Amount', 5);
    
    %sharpening the image
    outputImage =  imgaussfilt3(outputImage);
    
end