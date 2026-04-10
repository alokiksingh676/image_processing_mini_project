clc;
clear;

// loading the function file
exec('my_medfilt2.sci', -1);

disp("Testing Median Filter Function");

// Test Case 1: simple noisy matrix
img1 = [1 2 3;
        4 100 6;
        7 8 9];

disp("Input Matrix (Test 1):");
disp(img1);

out1 = my_medfilt2(img1);

disp("Output Matrix (Test 1):");
disp(out1);

// Test Case 2: uniform values
img2 = ones(3,3) * 5;

disp("Input Matrix (Test 2):");
disp(img2);

out2 = my_medfilt2(img2);

disp("Output Matrix (Test 2):");
disp(out2);

// -------------------------------
// Test Case 3: salt noise type
// -------------------------------
img3 = [10 10 10;
        10 255 10;
        10 10 10];

disp("Input Matrix (Test 3):");
disp(img3);

out3 = my_medfilt2(img3);

disp("Output Matrix (Test 3):");
disp(out3);
// Test Case 4: random matrix
img4 = grand(5,5,'uin',0,20);

disp("Input Matrix (Test 4 - Random):");
disp(img4);

out4 = my_medfilt2(img4);

disp("Output Matrix (Test 4):");
disp(out4);
// Test Case 5: single element case
img5 = [7];

disp("Input Matrix (Test 5):");
disp(img5);

out5 = my_medfilt2(img5);

disp("Output Matrix (Test 5):");
disp(out5);

disp(" All Test Cases Executed ");
