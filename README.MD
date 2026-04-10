# 🖼️ Image Processing Mini Project

## 📌 Overview
This repository contains implementations of fundamental image processing functions using **Scilab**. The project focuses on core concepts such as information measurement, contrast enhancement, and noise reduction using matrix-based computations.

---

## ⚙️ Implemented Functions

### 🔹 Entropy
- Computes the entropy of an image
- Measures the amount of information or randomness
- Useful in image analysis and compression

### 🔹 Histogram Equalization (histeq)
- Enhances image contrast
- Redistributes intensity values
- Improves visibility in low-contrast images

### 🔹 Median Filtering (medfilt2)
- Removes noise from images
- Preserves edges while smoothing
- Effective against salt-and-pepper noise

---

## 🧪 Testing
Each function has been tested using multiple input cases.

Test scripts included:
- `entropy/test_entropy.sce`
- `histeq/test_histeq.sce`
- `medfilt2/test_medfilt2.sce`

---

## 🛠️ Tools & Technologies
- Scilab
- Matrix operations
- Image processing fundamentals

---

## ▶️ How to Run

1. Open **Scilab**
2. Navigate to the project directory

3. Load functions:
exec('entropy/entropy.sci');
exec('histeq/histeq.sci');
exec('medfilt2/my_medfilt2.sci');

4. Run test scripts:
exec('entropy/test_entropy.sce');
exec('histeq/test_histeq.sce');
exec('medfilt2/test_medfilt2.sce');

---

## 📊 Applications
- Image preprocessing
- Noise reduction
- Contrast enhancement
- Foundation for computer vision tasks

---

## 🚀 Future Improvements
- Support for real image datasets
- Additional filtering techniques
- Implementation in Python (OpenCV)

---

## 👨‍💻 Author
Developed as a self-driven mini project to understand and implement core image processing techniques.