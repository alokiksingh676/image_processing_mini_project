function output_img = my_medfilt2(input_img)

    // get size of input image
    [r, c] = size(input_img);

    // initialize output image
    output_img = zeros(r, c);

    // create padded image (for borders)
    padded = zeros(r+2, c+2);
    padded(2:r+1, 2:c+1) = input_img;

    // applying 3x3 median filter
    for i = 2:r+1
        for j = 2:c+1

            // extract 3x3 neighborhood
            block = padded(i-1:i+1, j-1:j+1);

            // convert block into single column
            values = matrix(block, -1, 1);

            // sort the values
            values = gsort(values, "g", "i");

            // find middle element (median)
            mid_index = ceil(length(values)/2);
            med_val = values(mid_index);

            // assign to output
            output_img(i-1, j-1) = med_val;

        end
    end

    // display message (just for clarity)
    disp("Median filtering completed");

endfunction
