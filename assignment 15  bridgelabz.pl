//METHODS assignment 4

// 1. Sum of Digits of a 4-digit Random Number
class SumOfDigits {
    public int get4DigitRandomNumber() {
        return (int)(Math.random() * 9000) + 1000;
    }

    public int countDigits(int number) {
        int count = 0;
        while (number > 0) {
            count++;
            number /= 10;
        }
        return count;
    }

    public int[] getDigits(int number, int count) {
        int[] digits = new int[count];
        for (int i = count - 1; i >= 0; i--) {
            digits[i] = number % 10;
            number /= 10;
        }
        return digits;
    }

    public int findSumOfDigits(int[] digits) {
        int sum = 0;
        for (int digit : digits) {
            sum += digit;
        }
        return sum;
    }

    public static void main(String[] args) {
        SumOfDigits obj = new SumOfDigits();
        int number = obj.get4DigitRandomNumber();
        System.out.println("Generated 4-digit number: " + number);

        int count = obj.countDigits(number);
        int[] digits = obj.getDigits(number, count);
        int sum = obj.findSumOfDigits(digits);

        System.out.println("Sum of digits: " + sum);
    }
}


// 2. Football Team Height Analysis
class FootballTeamHeightAnalysis {
    public int[] generateRandomHeights(int numberOfPlayers) {
        int[] heights = new int[numberOfPlayers];
        for (int i = 0; i < numberOfPlayers; i++) {
            heights[i] = (int)(Math.random() * 101) + 150; // 150 - 250
        }
        return heights;
    }

    public int findSum(int[] array) {
        int sum = 0;
        for (int value : array) {
            sum += value;
        }
        return sum;
    }

    public double findMean(int[] array) {
        return findSum(array) / (double) array.length;
    }

    public int findMin(int[] array) {
        int min = Integer.MAX_VALUE;
        for (int value : array) {
            if (value < min) min = value;
        }
        return min;
    }

    public int findMax(int[] array) {
        int max = Integer.MIN_VALUE;
        for (int value : array) {
            if (value > max) max = value;
        }
        return max;
    }

    public void displayHeightsAnalysis(int[] heights) {
        System.out.println("Player Heights:");
        for (int height : heights) {
            System.out.print(height + " ");
        }
        System.out.println("\nShortest Height: " + findMin(heights));
        System.out.println("Tallest Height: " + findMax(heights));
        System.out.printf("Mean Height: %.2f\n", findMean(heights));
    }

    public static void main(String[] args) {
        FootballTeamHeightAnalysis team = new FootballTeamHeightAnalysis();
        int[] heights = team.generateRandomHeights(11);
        team.displayHeightsAnalysis(heights);
    }
}

import java.util.*;

public class FactorAnalyzer {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a number to analyze: ");
        int number = scanner.nextInt();
        int sum = 0, product = 1, sumOfSquares = 0;

        System.out.print("Factors of " + number + " are: ");
        for (int i = 1; i <= number; i++) {
            if (number % i == 0) {
                System.out.print(i + " ");
                sum += i;
                product *= i;
                sumOfSquares += i * i;
            }
        }
        System.out.println("\nSum of factors: " + sum);
        System.out.println("Product of factors: " + product);
        System.out.println("Sum of squares of factors: " + sumOfSquares);
    }
}

class RecursiveSum {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int n = scanner.nextInt();
        int result = recursiveSum(n);
        int formulaResult = n * (n + 1) / 2;
        System.out.println("Recursive sum: " + result);
        System.out.println("Formula sum: " + formulaResult);
    }

    public static int recursiveSum(int n) {
        if (n == 1) return 1;
        return n + recursiveSum(n - 1);
    }
}

class LeapYearChecker {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a year: ");
        int year = scanner.nextInt();
        if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
            System.out.println(year + " is a leap year.");
        else
            System.out.println(year + " is not a leap year.");
    }
}

class UnitConverter {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter distance in kilometers: ");
        double km = scanner.nextDouble();
        System.out.println("Distance in meters: " + km * 1000);

        System.out.print("Enter weight in kilograms: ");
        double kg = scanner.nextDouble();
        System.out.println("Weight in grams: " + kg * 1000);

        System.out.print("Enter temperature in Celsius: ");
        double celsius = scanner.nextDouble();
        double fahrenheit = (celsius * 9 / 5) + 32;
        System.out.println("Temperature in Fahrenheit: " + fahrenheit);
    }
}

class VotingEligibilityChecker {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter your age: ");
        int age = scanner.nextInt();
        System.out.println(age >= 18 ? "Eligible to vote." : "Not eligible to vote.");
    }
}

class YoungestTallestFinder {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int youngestAge = Integer.MAX_VALUE, tallestHeight = Integer.MIN_VALUE;

        for (int i = 1; i <= 3; i++) {
            System.out.print("Enter age of person " + i + ": ");
            int age = scanner.nextInt();
            System.out.print("Enter height (in cm) of person " + i + ": ");
            int height = scanner.nextInt();
            if (age < youngestAge) youngestAge = age;
            if (height > tallestHeight) tallestHeight = height;
        }

        System.out.println("Youngest age: " + youngestAge);
        System.out.println("Tallest height: " + tallestHeight);
    }
}

class NumberClassifier {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int number = scanner.nextInt();
        System.out.println(number > 0 ? "Positive" : number < 0 ? "Negative" : "Zero");
        System.out.println(number % 2 == 0 ? "Even" : "Odd");
    }
}

class BMICalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter weight in kg: ");
        double weight = scanner.nextDouble();
        System.out.print("Enter height in meters: ");
        double height = scanner.nextDouble();
        double bmi = weight / (height * height);
        System.out.println("BMI: " + bmi);
        if (bmi < 18.5) System.out.println("Underweight");
        else if (bmi < 24.9) System.out.println("Normal weight");
        else if (bmi < 29.9) System.out.println("Overweight");
        else System.out.println("Obese");
    }
}

class QuadraticRootsFinder {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter coefficients a, b, c: ");
        double a = scanner.nextDouble();
        double b = scanner.nextDouble();
        double c = scanner.nextDouble();

        double discriminant = b * b - 4 * a * c;

        if (discriminant > 0) {
            double root1 = (-b + Math.sqrt(discriminant)) / (2 * a);
            double root2 = (-b - Math.sqrt(discriminant)) / (2 * a);
            System.out.println("Roots are real and different: " + root1 + " and " + root2);
        } else if (discriminant == 0) {
            double root = -b / (2 * a);
            System.out.println("Roots are real and equal: " + root);
        } else {
            System.out.println("Roots are imaginary.");
        }
    }
}

class RandomStatsGenerator {
    public static void main(String[] args) {
        Random random = new Random();
        int[] numbers = new int[5];
        int sum = 0, max = Integer.MIN_VALUE, min = Integer.MAX_VALUE;

        System.out.print("Random numbers: ");
        for (int i = 0; i < 5; i++) {
            numbers[i] = random.nextInt(100); // 0 to 99
            System.out.print(numbers[i] + " ");
            sum += numbers[i];
            if (numbers[i] > max) max = numbers[i];
            if (numbers[i] < min) min = numbers[i];
        }

        System.out.println("\nSum: " + sum);
        System.out.println("Average: " + (sum / 5.0));
        System.out.println("Max: " + max);
        System.out.println("Min: " + min);
    }
}

class SumOfDigits {
    public static void main(String[] args) {
        Random random = new Random();
        int number = 1000 + random.nextInt(9000); // 4-digit number
        System.out.println("Generated number: " + number);

        int[] digits = new int[4];
        int sum = 0;

        for (int i = 3; i >= 0; i--) {
            digits[i] = number % 10;
            number /= 10;
            sum += digits[i];
        }

        System.out.println("Digits: " + Arrays.toString(digits));
        System.out.println("Sum of digits: " + sum);
    }
}

class FootballTeamHeightAnalysis {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] heights = new int[11];
        int min = Integer.MAX_VALUE, max = Integer.MIN_VALUE, sum = 0;

        for (int i = 0; i < 11; i++) {
            System.out.print("Enter height of player " + (i + 1) + " in cm: ");
            heights[i] = scanner.nextInt();
            sum += heights[i];
            if (heights[i] > max) max = heights[i];
            if (heights[i] < min) min = heights[i];
        }

        System.out.println("Tallest player height: " + max + " cm");
        System.out.println("Shortest player height: " + min + " cm");
        System.out.println("Average height: " + (sum / 11.0) + " cm");
    }
}

// MatrixOperations.java
import java.util.*;

public class MatrixOperations {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of rows: ");
        int rows = sc.nextInt();
        System.out.print("Enter number of columns: ");
        int cols = sc.nextInt();

        int[][] A = new int[rows][cols];
        int[][] B = new int[rows][cols];

        System.out.println("\nEnter elements of Matrix A:");
        for (int i = 0; i < rows; i++)
            for (int j = 0; j < cols; j++)
                A[i][j] = sc.nextInt();

        System.out.println("\nEnter elements of Matrix B:");
        for (int i = 0; i < rows; i++)
            for (int j = 0; j < cols; j++)
                B[i][j] = sc.nextInt();

        System.out.println("\nMatrix A + Matrix B:");
        int[][] sum = new int[rows][cols];
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                sum[i][j] = A[i][j] + B[i][j];
                System.out.print(sum[i][j] + " ");
            }
            System.out.println();
        }

        System.out.println("\nTranspose of Matrix A:");
        for (int i = 0; i < cols; i++) {
            for (int j = 0; j < rows; j++) {
                System.out.print(A[j][i] + " ");
            }
            System.out.println();
        }

        if (cols == rows) {
            int[][] product = new int[rows][cols];
            for (int i = 0; i < rows; i++) {
                for (int j = 0; j < cols; j++) {
                    for (int k = 0; k < cols; k++) {
                        product[i][j] += A[i][k] * B[k][j];
                    }
                    System.out.print(product[i][j] + " ");
                }
                System.out.println();
            }
        } else {
            System.out.println("\nMatrix multiplication not possible (rows != columns).");
        }
    }
}

// FibonacciSeries.java
import java.util.*;

public class FibonacciSeries {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number of terms: ");
        int n = sc.nextInt();

        int a = 0, b = 1, c;
        System.out.print("Fibonacci Series: " + a + " " + b + " ");

        for (int i = 2; i < n; i++) {
            c = a + b;
            System.out.print(c + " ");
            a = b;
            b = c;
        }
        System.out.println();
    }
}

// PrimeNumberGenerator.java
import java.util.*;

public class PrimeNumberGenerator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter upper limit: ");
        int n = sc.nextInt();

        System.out.println("Prime numbers up to " + n + ":");
        for (int i = 2; i <= n; i++) {
            if (isPrime(i)) {
                System.out.print(i + " ");
            }
        }
        System.out.println();
    }

    public static boolean isPrime(int num) {
        if (num <= 1) return false;
        for (int i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) return false;
        }
        return true;
    }
}

// ArraySortSearch.java
import java.util.*;

public class ArraySortSearch {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] arr = new int[5];
        System.out.println("Enter 5 integers:");
        for (int i = 0; i < 5; i++) {
            arr[i] = sc.nextInt();
        }

        Arrays.sort(arr);
        System.out.println("Sorted array: " + Arrays.toString(arr));

        System.out.print("Enter number to search: ");
        int key = sc.nextInt();
        int index = Arrays.binarySearch(arr, key);

        if (index >= 0)
            System.out.println("Found at index: " + index);
        else
            System.out.println("Not found.");
    }
}
