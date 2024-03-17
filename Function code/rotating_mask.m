%% Function code: Task 2
% Rotating Mask

function filtered_img = rotating_mask(image, kernel_size)
    image = double(image);
    pad_size = floor(kernel_size/2);
    [rows, cols, channels] = size(image);
    
    % Initiate output image
    % Add padding as zero
    filtered_img = zeros(rows + pad_size*2, cols + pad_size*2, channels);
    disp_map = zeros(rows + pad_size*2, cols + pad_size*2, channels);
    filtered_img = uint8(filtered_img);
    filtered_img(1+pad_size : rows+pad_size , 1+pad_size : cols+pad_size , :) = image;
    
    % Find the dispersion map of the input image
    disp_map(1+pad_size : rows+pad_size , 1+pad_size : cols+pad_size, :) = ...
        Averaging_filter(image.^2, kernel_size) - double(Averaging_filter(image, kernel_size)).^2;
    
    % Find min variance mask
    aver_image = Averaging_filter(image, kernel_size);
    for i = (pad_size + 1): rows + pad_size
        for j = (pad_size + 1): cols + pad_size
            % Define the region covered by the mask surrounding center
            % pixel (i,j)
            region = disp_map(i-pad_size : i+pad_size, j-pad_size : j+pad_size);
            [minR, minC] = find(region == min(region,[], "all"));
            % Convert to the true position of replacing pixel from the min
            % variance indices
            i_true = i + minR(1) - pad_size - 1 - pad_size;
            j_true = j + minC(1) - pad_size - 1 - pad_size;

            if (i_true <= 0 || j_true <= 0 || i_true > rows || j_true > cols)
                filtered_img(i,j) = 0; % if the pixel replacing pixel is out of bound, replace the center one with 0
            else
                filtered_img(i,j) = aver_image(i_true, j_true); % if the replacing pixel is not out of bound, just replace
            end
        end
    end
    filtered_img = filtered_img(1 + pad_size : rows+pad_size, 1+pad_size : cols+pad_size, :); 
    