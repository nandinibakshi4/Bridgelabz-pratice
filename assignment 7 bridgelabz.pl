//ARRAYS =>
 
Program 1 — Sum of all digits (using an array)
Q: Create a program to find the sum of all the digits of a number given by a user using an array and display the sum.
Hints:

Validate the input; if invalid, print an error and terminate.

Count digits, extract each digit into an array, then sum them.
I/P: number (integer)
O/P: Sum of Digits: ___

import java.util.Scanner;

/**
 * Program: SumOfDigitsUsingArray
 * Purpose: Read an integer, validate it, extract its digits into an array,
 *          and compute the sum of digits. Demonstrates arrays, validation,
 *          System.err, System.exit, and using array length in loops.
 */
class SumOfDigitsUsingArray {
    public static void main(String[] args) {
        // Create a Scanner object to read user input
        Scanner input = new Scanner(System.in);

        // ---- Read & validate user input ----
        System.out.print("Enter a non-negative integer: ");

        // Check that the next token is an integer
        if (!input.hasNextInt()) {
            System.err.println("Invalid input. Please enter an integer value.");
            System.exit(1); // non-zero => unsuccessful termination
        }

        // Read the integer value
        int number = input.nextInt();

        // Enforce non-negative constraint
        if (number < 0) {
            System.err.println("Invalid Number. Only non-negative integers are allowed.");
            System.exit(1);
        }

        // ---- Special-case: number == 0 has one digit '0' ----
        if (number == 0) {
            // Single digit array containing 0
            int[] digits = new int[] { 0 };

            // Sum digits using array length
            int sum = 0;
            for (int i = 0; i < digits.length; i++) {
                sum += digits[i];
            }

            System.out.println("\nSum of Digits: " + sum);
            input.close();
            return; // exit main cleanly
        }

        // ---- Count how many digits are in the number ----
        int temp = number;
        int digitCount = 0;
        while (temp > 0) {
            digitCount++;
            temp /= 10;
        }

        // ---- Extract digits into an array (least significant to most) ----
        int[] digits = new int[digitCount];

        // Use a copy so we don't lose the original input
        int original = number;
        for (int i = 0; i < digits.length; i++) {
            digits[i] = original % 10; // get last digit
            original /= 10;            // remove last digit
        }

        // ---- Compute sum of digits using the array ----
        int sum = 0;
        for (int i = 0; i < digits.length; i++) {
            sum += digits[i];
        }

        // ---- Display result ----
        System.out.println("\nSum of Digits: " + sum);

Program 2 — 2D Array (Matrix): input, display, and sum
Q: Write a Java program to create a 2D array (matrix) of integers, initialize it with values taken from the user, display the matrix, and print the sum of all elements.
Hints:

Read rows and cols; validate they are positive.

Read each element; validate input type.

Use matrix.length and matrix[i].length in loops.
I/P: rows, cols, followed by rows * cols integers
O/P: Matrix contents and Total Sum: ___

import java.util.Scanner;

/**
 * Program: MatrixSumCalculator
 * Purpose: Read rows and columns, validate inputs, fill a 2D int matrix from user,
 *          print the matrix, and compute the total sum of all elements.
 * Notes  : Demonstrates multi-dimensional arrays, validation, System.err, System.exit,
 *          and using array length properties in nested loops.
 */
class MatrixSumCalculator {
    public static void main(String[] args) {
        // Create a Scanner object for user input
        Scanner input = new Scanner(System.in);

        // ---- Read & validate matrix dimensions ----
        System.out.print("Enter number of rows (positive integer): ");
        if (!input.hasNextInt()) {
            System.err.println("Invalid input for rows. Please enter a positive integer.");
            System.exit(1);
        }
        int rows = input.nextInt();

        System.out.print("Enter number of columns (positive integer): ");
        if (!input.hasNextInt()) {
            System.err.println("Invalid input for columns. Please enter a positive integer.");
            System.exit(1);
        }
        int cols = input.nextInt();

        if (rows <= 0 || cols <= 0) {
            System.err.println("Rows and columns must both be positive integers.");
            System.exit(1);
        }

        // ---- Declare the 2D array using the user-provided dimensions ----
        int[][] matrix = new int[rows][cols];

        // ---- Read matrix elements with validation ----
        System.out.println("\nEnter " + (rows * cols) + " integers (row-wise):");
        for (int i = 0; i < matrix.length; i++) {               // use matrix.length for rows
            for (int j = 0; j < matrix[i].length; j++) {        // use matrix[i].length for cols
                if (!input.hasNextInt()) {
                    System.err.println("Invalid element. Please enter an integer.");
                    System.exit(1);
                }
                matrix[i][j] = input.nextInt();
            }
        }

        // ---- Display the matrix and simultaneously compute the sum ----
        int totalSum = 0;
        System.out.println("\nMatrix:");
        for (int i = 0; i < matrix.length; i++) {
            // Print each row
            for (int j = 0; j < matrix[i].length; j++) {
                System.out.print(matrix[i][j] + " ");
                totalSum += matrix[i][j];
            }
            System.out.println(); // end of row
        }

        // ---- Display final sum of all elements ----
        System.out.println("\nTotal Sum: " + totalSum);

        // Close the Scanner
        input.close();
    }
}





