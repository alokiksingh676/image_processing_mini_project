function H = my_entropy(I)

    // Convert matrix to vector
    pixels = I(:);

    // Total number of pixels
    N = length(pixels);

    // Find maximum intensity value
    max_val = max(pixels);

    // Create histogram
    hist = zeros(max_val + 1, 1);

    // Fill histogram
    for k = 1:N
        index = pixels(k) + 1;   // Adjust index
        hist(index) = hist(index) + 1;
    end

    // Convert to probability
    prob = hist / N;

    // Calculate entropy
    H = 0;

    for i = 1:length(prob)
        if prob(i) > 0 then
            H = H - prob(i) * log2(prob(i));
        end
    end

endfunction
