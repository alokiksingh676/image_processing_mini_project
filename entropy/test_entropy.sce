clc;
clear;
// Load the function file
exec('entropy.sci');
// Test Case 1: All same values
I1 = [0 0 0;
      0 0 0;
      0 0 0];
E1 = my_entropy(I1);
disp("Test Case 1 (All same values):");
disp(E1);
// Test Case 2: Equal distribution (2 values)
I2 = [0 1;
      0 1];
E2 = my_entropy(I2);
disp("Test Case 2 (Equal distribution):");
disp(E2);
// Test Case 3: Multiple equal values
I3 = [0 1 2 3];
E3 = my_entropy(I3);
disp("Test Case 3 (4 equal values):");
disp(E3);
// Test Case 4: Unequal distribution
I4 = [0 0 0 1];
E4 = my_entropy(I4);
disp("Test Case 4 (Unequal distribution):");
disp(E4);

// Test Case 5: Random matrix
I5 = grand(5,5,'uin',0,3);

disp("Random Matrix:");
disp(I5);
E5 = my_entropy(I5);
disp("Test Case 5 (Random):");
disp(E5);
disp("===== END OF TESTS =====");
