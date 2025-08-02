//EXTRAS - Built-In Function Practice Problem

// Problem 1: Time Zones and ZonedDateTime
// Write a program that displays the current time in different time zones:
// ➢ GMT (Greenwich Mean Time)
// ➢ IST (Indian Standard Time)
// ➢ PST (Pacific Standard Time)
// Hint: Use ZonedDateTime and ZoneId to work with different time zones.

import java.time.ZoneId;
import java.time.ZonedDateTime;

public class TimeZones {
    public static void main(String[] args) {
        ZonedDateTime gmt = ZonedDateTime.now(ZoneId.of("GMT"));
        ZonedDateTime ist = ZonedDateTime.now(ZoneId.of("Asia/Kolkata"));
        ZonedDateTime pst = ZonedDateTime.now(ZoneId.of("America/Los_Angeles"));

        System.out.println("GMT Time: " + gmt);
        System.out.println("IST Time: " + ist);
        System.out.println("PST Time: " + pst);
    }
}


// Problem 2: Date Arithmetic
// Create a program that:
// ➢ Takes a date input and adds 7 days, 1 month, and 2 years to it.
// ➢ Then subtracts 3 weeks from the result.
// Hint: Use LocalDate.plusDays(), plusMonths(), plusYears(), and minusWeeks() methods.

import java.time.LocalDate;
import java.util.Scanner;

public class DateArithmetic {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter date (yyyy-MM-dd): ");
        String input = sc.nextLine();

        LocalDate date = LocalDate.parse(input);
        LocalDate modifiedDate = date.plusDays(7).plusMonths(1).plusYears(2).minusWeeks(3);

        System.out.println("Final Date after operations: " + modifiedDate);
        sc.close();
    }
}


// Problem 3: Date Formatting
// Write a program that:
// ➢ Displays the current date in three different formats:
// ■ dd/MM/yyyy
// ■ yyyy-MM-dd
// ■ EEE, MMM dd, yyyy
// Hint: Use DateTimeFormatter with custom patterns for date formatting.

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class DateFormatting {
    public static void main(String[] args) {
        LocalDate date = LocalDate.now();

        DateTimeFormatter format1 = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        DateTimeFormatter format2 = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        DateTimeFormatter format3 = DateTimeFormatter.ofPattern("EEE, MMM dd, yyyy");

        System.out.println("Format 1: " + date.format(format1));
        System.out.println("Format 2: " + date.format(format2));
        System.out.println("Format 3: " + date.format(format3));
    }
}


// Problem 4: Date Comparison
// Write a program that:
// ➢ Takes two date inputs and compares them to check if the first date is before, after,
// or the same as the second date.
// Hint: Use isBefore(), isAfter(), and isEqual() methods from the LocalDate class.

import java.time.LocalDate;
import java.util.Scanner;

public class DateComparison {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter first date (yyyy-MM-dd): ");
        LocalDate date1 = LocalDate.parse(sc.nextLine());
        System.out.print("Enter second date (yyyy-MM-dd): ");
        LocalDate date2 = LocalDate.parse(sc.nextLine());

        if (date1.isBefore(date2)) {
            System.out.println("First date is before second date.");
        } else if (date1.isAfter(date2)) {
            System.out.println("First date is after second date.");
        } else {
            System.out.println("Both dates are the same.");
        }
        sc.close();
    }
}

..OTHER ASSIGN...
// 1. Number Guessing Game
import java.util.*;

public class NumberGuessingGame {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int low = 1, high = 100;
        String feedback = "";
        while (!feedback.equals("correct")) {
            int guess = generateGuess(low, high);
            System.out.println("Computer guesses: " + guess);
            System.out.print("Is the guess too high, too low, or correct? ");
            feedback = scanner.nextLine().toLowerCase();

            if (feedback.equals("high")) {
                high = guess - 1;
            } else if (feedback.equals("low")) {
                low = guess + 1;
            } else if (!feedback.equals("correct")) {
                System.out.println("Invalid input. Please enter high, low, or correct.");
            }
        }
        System.out.println("Computer guessed correctly!");
    }

    static int generateGuess(int low, int high) {
        return low + (int) (Math.random() * (high - low + 1));
    }
}

// 2. Maximum of Three Numbers
import java.util.*;

public class MaxOfThree {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter first number: ");
        int a = sc.nextInt();
        System.out.print("Enter second number: ");
        int b = sc.nextInt();
        System.out.print("Enter third number: ");
        int c = sc.nextInt();

        int max = findMax(a, b, c);
        System.out.println("Maximum is: " + max);
    }

    static int findMax(int x, int y, int z) {
        return Math.max(x, Math.max(y, z));
    }
}

// 3. Prime Number Checker
import java.util.*;

public class PrimeChecker {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int num = sc.nextInt();

        if (isPrime(num)) {
            System.out.println(num + " is a prime number.");
        } else {
            System.out.println(num + " is not a prime number.");
        }
    }

    static boolean isPrime(int n) {
        if (n <= 1) return false;
        for (int i = 2; i <= Math.sqrt(n); i++) {
            if (n % i == 0) return false;
        }
        return true;
    }
}

// 4. Fibonacci Sequence Generator
import java.util.*;

public class FibonacciGenerator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number of terms: ");
        int terms = sc.nextInt();
        generateFibonacci(terms);
    }

    static void generateFibonacci(int n) {
        int a = 0, b = 1;
        for (int i = 1; i <= n; i++) {
            System.out.print(a + " ");
            int next = a + b;
            a = b;
            b = next;
        }
        System.out.println();
    }
}

// 5. Palindrome Checker
import java.util.*;

public class PalindromeChecker {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String str = sc.nextLine();

        if (isPalindrome(str)) {
            System.out.println("The string is a palindrome.");
        } else {
            System.out.println("The string is not a palindrome.");
        }
    }

    static boolean isPalindrome(String s) {
        String reversed = new StringBuilder(s).reverse().toString();
        return s.equalsIgnoreCase(reversed);
    }
}

// 6. Factorial Using Recursion
import java.util.*;

public class FactorialRecursion {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int num = sc.nextInt();
        System.out.println("Factorial: " + factorial(num));
    }

    static long factorial(int n) {
        if (n <= 1) return 1;
        return n * factorial(n - 1);
    }
}

// 7. GCD and LCM Calculator
import java.util.*;

public class GCDLCMCalculator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter first number: ");
        int a = sc.nextInt();
        System.out.print("Enter second number: ");
        int b = sc.nextInt();

        int gcd = findGCD(a, b);
        int lcm = (a * b) / gcd;

        System.out.println("GCD: " + gcd);
        System.out.println("LCM: " + lcm);
    }

    static int findGCD(int x, int y) {
        while (y != 0) {
            int temp = y;
            y = x % y;
            x = temp;
        }
        return x;
    }
}

// 8. Temperature Converter
import java.util.*;

public class TemperatureConverter {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter temperature in Celsius: ");
        double celsius = sc.nextDouble();
        System.out.println("Fahrenheit: " + celsiusToFahrenheit(celsius));

        System.out.print("Enter temperature in Fahrenheit: ");
        double fahrenheit = sc.nextDouble();
        System.out.println("Celsius: " + fahrenheitToCelsius(fahrenheit));
    }

    static double celsiusToFahrenheit(double c) {
        return (c * 9 / 5) + 32;
    }

    static double fahrenheitToCelsius(double f) {
        return (f - 32) * 5 / 9;
    }
}

// 9. Basic Calculator
import java.util.*;

public class BasicCalculator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Choose operation: 1.Add 2.Subtract 3.Multiply 4.Divide");
        int choice = sc.nextInt();

        System.out.print("Enter first number: ");
        double a = sc.nextDouble();
        System.out.print("Enter second number: ");
        double b = sc.nextDouble();

        switch (choice) {
            case 1: System.out.println("Sum: " + add(a, b)); break;
            case 2: System.out.println("Difference: " + subtract(a, b)); break;
            case 3: System.out.println("Product: " + multiply(a, b)); break;
            case 4: System.out.println("Quotient: " + divide(a, b)); break;
            default: System.out.println("Invalid choice");
        }
    }

    static double add(double x, double y) { return x + y; }
    static double subtract(double x, double y) { return x - y; }
    static double multiply(double x, double y) { return x * y; }
    static double divide(double x, double y) {
        if (y == 0) {
            System.out.println("Cannot divide by zero.");
            return 0;
        }
        return x / y;
    }
}