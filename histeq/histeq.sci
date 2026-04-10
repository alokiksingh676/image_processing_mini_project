function out = histeq_img(img)

    // Convert to grayscale if RGB
    if size(img,3) == 3 then
        img = img(:,:,1)*0.3 + img(:,:,2)*0.59 + img(:,:,3)*0.11;
    end

    img = uint8(img);

    counts = zeros(256,1);

    // Histogram
    for i = 1:size(img,1)
        for j = 1:size(img,2)
            counts(img(i,j)+1) = counts(img(i,j)+1) + 1;
        end
    end

    total = sum(counts);

    // PDF
    pdf = counts / total;

    // CDF
    cdf = cumsum(pdf);

    // Mapping
    out = img;

    for i = 1:size(img,1)
        for j = 1:size(img,2)
            out(i,j) = round(255 * cdf(img(i,j)+1));
        end
    end

endfunction
