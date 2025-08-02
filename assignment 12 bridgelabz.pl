//04 - Java Methods
//assignmnet 1
// 1. Java Method Basics – greet Example

// This program demonstrates a simple Java method that prints a greeting message.
class Main {

    // This is a user-defined method named greet with no parameters and no return value.
    // It simply prints two lines when called.
    void greet() {
        System.out.println("Hello");
        System.out.println("How do you do?");
    }

    public static void main(String[] args) {
        // Creating an object of the Main class to call the greet method.
        Main obj = new Main();

        // Calling the greet() method using the object created.
        obj.greet();

        // Program control goes to the greet() method, prints message, and returns to main().
    }
}

//2. Method with Parameters and Return Type – convertKmToMiles
// This program demonstrates how to create a method that takes input, processes it, and returns a result.
import java.util.Scanner;

public class UnitConverter {

    // This is a static method which converts kilometers to miles.
    // It takes kilometers as input and returns the converted miles.
    public static double convertKmToMiles(double km) {
        // Conversion factor from kilometers to miles
        double kmToMilesRate = 0.621371;

        // Calculate and return miles
        return km * kmToMilesRate;
    }

    public static void main(String[] args) {
        // Creating a Scanner object to read input from user
        Scanner sc = new Scanner(System.in);

        // Asking user for input in kilometers
        System.out.print("Enter the distance in kilometers: ");
        double km = sc.nextDouble();

        // Calling the convertKmToMiles method and storing the result
        double miles = convertKmToMiles(km);

        // Printing the result
        System.out.println("Distance in miles: " + miles);

        // Closing the scanner object to free resources
        sc.close();
    }
}

//3. Recursive Method – factorial

// This program demonstrates a recursive method to calculate the factorial of a number.
public class RecursiveExample {

    // Recursive method that calculates factorial of a number
    public static int factorial(int n) {
        // Base case: factorial of 0 is 1
        if (n == 0) {
            return 1;
        } else {
            // Recursive case: n * factorial of (n-1)
            return n * factorial(n - 1);
        }
    }

    public static void main(String[] args) {
        int number = 5;

        // Calling factorial method and printing the result
        System.out.println("Factorial of " + number + " is: " + factorial(number));
    }
}

//4. Using Java Standard Library Methods (Math Class)

// This program demonstrates the use of standard Java Math library methods.
public class MathMethodsDemo {

    public static void main(String[] args) {
        // Example of Math.sqrt() to find square root
        int number = 25;
        double squareRoot = Math.sqrt(number);
        System.out.println("Square root of " + number + " is " + squareRoot);

        // Example of Math.pow() to calculate power
        int base = 2, exponent = 3;
        double powerResult = Math.pow(base, exponent);
        System.out.println(base + " raised to the power of " + exponent + " is " + powerResult);

        // Example of Math.random() to generate random numbers
        double randomNumber1 = Math.random();
        System.out.println("Random number between 0.0 and 1.0: " + randomNumber1);

        double randomNumber2 = Math.random() * 5;
        System.out.println("Random number between 0.0 and 5.0: " + randomNumber2);

        int randomInt = (int) (Math.random() * 10 + 1);
        System.out.println("Random integer between 1 and 10: " + randomInt);
    }
}

//5. Full Program to Sum Digits of a Random 4-Digit Number Using Methods

// This program generates a random 4-digit number, breaks it into digits, and calculates the sum of its digits.
public class SumOfDigits {

    // Method to generate a 4-digit random number (1000 to 9999)
    public int get4DigitRandomNumber() {
        return (int) (Math.random() * 9000) + 1000;
    }

    // Method to count the number of digits in a number
    public int countDigits(int number) {
        int count = 0;
        while (number > 0) {
            count++;
            number /= 10;
        }
        return count;
    }

    // Method to extract digits of the number and store in an array
    public int[] getDigits(int number, int count) {
        int[] digits = new int[count];
        for (int i = count - 1; i >= 0; i--) {
            digits[i] = number % 10;
            number /= 10;
        }
        return digits;
    }

    // Method to calculate the sum of digits in the array
    public int sumArray(int[] array) {
        int sum = 0;
        for (int digit : array) {
            sum += digit;
        }
        return sum;
    }

    public static void main(String[] args) {
        // Creating object of class to use non-static methods
        SumOfDigits obj = new SumOfDigits();

        // Generate random 4-digit number
        int number = obj.get4DigitRandomNumber();
        System.out.println("Random 4-digit number: " + number);

        // Count digits in the number
        int count = obj.countDigits(number);
        System.out.println("Count of digits: " + count);

        // Extract digits into array
        int[] digits = obj.getDigits(number, count);
        System.out.print("Digits: ");
        for (int digit : digits) {
            System.out.print(digit + " ");
        }

        // Calculate sum of digits
        int sum = obj.sumArray(digits);
        System.out.println("\nSum of digits: " + sum);
    }
}

