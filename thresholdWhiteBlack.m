function out = thresholdWhiteBlack(input_img, threshold)

    % Read the input image
    img = input_img;
    img_gray = rgb2gray(img);
    
    % size of image
    [r,c] = size(img_gray);

    % Thresholding
    for i=1:r
        for j=1:c
            if img_gray(i,j) < threshold
                img_gray(i,j) = 0;
            elseif img_gray(i,j) >= threshold
                img_gray(i,j) = 255;
            end
        end
    end

    out = medfilt2(img_gray);
end
