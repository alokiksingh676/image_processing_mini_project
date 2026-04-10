# Function Name: my_medfilt2


##  Description

The `my_medfilt2` function is used to apply a median filter on a 2D matrix (image).
It replaces each element of the matrix with the median value of its surrounding 3×3 neighborhood.

This technique is mainly used to remove noise (especially salt and pepper noise) while preserving important features like edges.

---

##  Calling Sequence

output_img = my_medfilt2(input_img)

---

##  Input Parameters

### input_img

* Type: Matrix
* Description:
  A 2D matrix representing an image or pixel values.
  Each element corresponds to intensity at that position.

##  Output Parameters

### output_img

* Type: Matrix
* Description:
  The filtered matrix after applying median filtering.
  Noise in the image is reduced.


##  Algorithm

Step 1: Start

Step 2: Read input matrix (image)

Step 3: Get size of matrix (rows and columns)

Step 4: Create a padded matrix by adding zeros around the border

Step 5: For each element in the original matrix:

* Extract a 3×3 neighborhood window
* Convert window into a vector
* Sort the values
* Find the middle element (median)

Step 6: Replace the current element with the median value

Step 7: Repeat for all elements

Step 8: Return the filtered matrix

Step 9: Stop

## Test Cases

### Test Case 1: Noisy Matrix

Input:
[1 2 3;
4 100 6;
7 8 9]

Expected Output:
The value 100 (noise) should be replaced by nearby values.

### Test Case 2: Uniform Matrix

Input:
All values = 5

Expected Output:
Same matrix (no change)

### Test Case 3: Salt Noise

Input:
[10 10 10;
10 255 10;
10 10 10]

Expected Output:
255 replaced with 10

### Test Case 4: Random Matrix

Input:
Random values between 0–20

Expected Output:
Smoother matrix with reduced variations

### Test Case 5: Single Element

Input:
[7]

Expected Output:
[7] (no change)



## Conclusion

The `my_medfilt2` function successfully applies median filtering using basic Scilab operations.
It demonstrates how neighborhood processing and sorting can be used for noise removal in images.
