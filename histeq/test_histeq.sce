clc;
clear;

// Load function
exec('histeq.sci', -1);

// Test Case 1: Low contrast image
img = uint8([
50 50 50 50;
50 60 60 50;
50 60 60 50;
50 50 50 50
]);

disp("Original Image:");
disp(img);

out = histeq_img(img);

disp("Equalized Image:");
disp(out);

// Test Case 2: Gradient image
img2 = uint8([10 20 30; 40 50 60; 70 80 90]);

disp("Gradient:");
disp(img2);

disp("Equalized:");
disp(histeq_img(img2));

// Test Case 3: Uniform image
img3 = uint8(ones(5,5)*100);

disp("Uniform:");
disp(histeq_img(img3));
