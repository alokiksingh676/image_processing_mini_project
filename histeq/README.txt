# Function: histeq

## Description

The `histeq` function performs histogram equalization to enhance the contrast of a grayscale image. It redistributes pixel intensities to span the full intensity range.

## Syntax

```
output = histeq_img(image)
```

## Input

* image: 2D grayscale matrix

## Output

* output: contrast-enhanced image

## Algorithm

1. Compute histogram of pixel values
2. Normalize to get probability distribution (PDF)
3. Compute cumulative distribution function (CDF)
4. Map original pixel values using:
   output = round(255 × CDF)

## Test Cases

1. Low contrast image → improved contrast
2. Gradient image → enhanced distribution
3. Uniform image → no change

## Results

* Pixel values are redistributed across full range
* Contrast improves significantly in low-contrast images

## Limitations
* Works on grayscale images
* Image input handled via matrices due to module limitations

## Applications

* Medical imaging
* Satellite images
* Image preprocessing

## Conclusion

The implemented function successfully enhances image contrast using histogram equalization and produces expected results.

