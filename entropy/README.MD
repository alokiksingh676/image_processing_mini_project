## Entropy Function Implementation in Scilab



### Objective :

To reimplement the entropy function as in octave for image processing manually in Scilab without using any external toolbox.



### Entropy:

Entropy is a measure of randomness or information content in an image.

Higher entropy means more complexity, while lower entropy means a simpler image.

The entropy function computes the randomness or information content present in an image. It is a statistical measure that quantifies the unpredictability of pixel intensity values.

Entropy is widely used in image processing for texture analysis, image quality assessment, and feature extraction.



### Formula used:

H = - Σ p(i) \* log2(p(i))

Where:

p(i) = probability of pixel intensity



### Files Included:

###### entropy.sci:

Contains the user-defined entropy function.

###### test\_entropy.sce:

Contains multiple test cases to verify the function.

###### README.txt:

Project description and instructions.



### How to Run:



Step 1: Open Scilab

Step 2: Set working directory:

cd('your\_folder\_path')

Step 3: Run test file:

exec('test\_entropy.sce', -1);



### Input Parameters:

I (Input Image Matrix)

Type: Matrix

Description:

A 2D matrix representing a grayscale image or pixel intensity values.

Range:

Typically integer values (e.g., 0–255 for images), but can work with any non-negative values.



### Output Parameters:

H (Entropy Value)

Type: Scalar

Description:

A numerical value representing the entropy of the input image.

### Test Cases:

All same values → Entropy = 0

Equal distribution → Entropy ≈ 1

Multiple equal values → Entropy ≈ 2

Unequal distribution → Entropy < 1

Random matrix → Medium/High entropy



### Algorithm:

Entropy Calculation



Step 1: Start

Step 2: Input the image matrix I

Step 3: Convert the image matrix into a column vector

pixels = I(:)

Step 4: Find total number of pixels

N = length(pixels)

Step 5: Determine maximum intensity value

max\_val = max(pixels)

Step 6: Initialize histogram array of size (max\_val + 1) with zeros

Step 7: For each pixel value in the vector:

Find index = pixel value + 1

Increment histogram at that index

Step 8: Normalize histogram to obtain probability distribution

prob = hist / N

Step 9: Initialize entropy H = 0

Step 10: For each probability value:

If prob(i) > 0 then

H = H - prob(i) \* log2(prob(i))

Step 11: Output entropy value H

Step 12: Stop



### Conclusion:



The implemented entropy function successfully computes the randomness of an image using histogram-based probability distribution. The results are consistent with standard definitions and match expected theoretical behavior.







