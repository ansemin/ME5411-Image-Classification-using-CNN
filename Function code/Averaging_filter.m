%% Function code: Task 1
% Averaging mask

function averaged_image = Averaging_filter(oimage, kernel_size)
    K = ones(kernel_size, kernel_size) / kernel_size^2;
    %gray_image = rgb2gray(oimage);
    averaged_image = imfilter(oimage, K, "symmetric","same","conv");