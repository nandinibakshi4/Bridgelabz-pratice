//ARRAY LEVEL 2

// Program 1: Voting eligibility based on age
import java.util.Scanner;

class VotingEligibilityChecker {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int[] ages = new int[10];

        // Input ages of 10 students
        for (int i = 0; i < ages.length; i++) {
            System.out.print("Enter age for student " + (i + 1) + ": ");
            ages[i] = input.nextInt();
        }

        // Check voting eligibility
        for (int age : ages) {
            if (age < 0) {
                System.err.println("Invalid age entered.");
            } else if (age >= 18) {
                System.out.println("The student with age " + age + " can vote.");
            } else {
                System.out.println("The student with age " + age + " cannot vote.");
            }
        }

        input.close();
    }
}

// Program 2: Number classification and comparison
import java.util.Scanner;

class NumberClassifier {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int[] numbers = new int[5];

        for (int i = 0; i < numbers.length; i++) {
            System.out.print("Enter number " + (i + 1) + ": ");
            numbers[i] = input.nextInt();
        }

        for (int number : numbers) {
            if (number > 0) {
                String type = (number % 2 == 0) ? "even" : "odd";
                System.out.println(number + " is positive and " + type);
            } else if (number < 0) {
                System.out.println(number + " is negative");
            } else {
                System.out.println("Number is zero");
            }
        }

        // Compare first and last element
        if (numbers[0] == numbers[4]) {
            System.out.println("First and last elements are equal");
        } else if (numbers[0] > numbers[4]) {
            System.out.println("First element is greater than last element");
        } else {
            System.out.println("First element is less than last element");
        }

        input.close();
    }
}

// Program 3: Multiplication table
import java.util.Scanner;

class MultiplicationTable {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int number = input.nextInt();
        int[] table = new int[10];

        for (int i = 0; i < 10; i++) {
            table[i] = number * (i + 1);
        }

        for (int i = 0; i < 10; i++) {
            System.out.println(number + " * " + (i + 1) + " = " + table[i]);
        }

        input.close();
    }
}

// Program 4: Store values until 0 or negative number or max 10
import java.util.Scanner;

class StoreAndSumValues {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double[] values = new double[10];
        int index = 0;
        double total = 0.0;

        while (true) {
            System.out.print("Enter a number: ");
            double value = input.nextDouble();
            if (value <= 0 || index == 10) break;
            values[index++] = value;
        }

        for (int i = 0; i < index; i++) {
            total += values[i];
        }

        System.out.println("Total sum: " + total);
        input.close();
    }
}

// Program 5: Multiplication table from 6 to 9
import java.util.Scanner;

class MultiplicationTableFrom6To9 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int number = input.nextInt();
        int[] results = new int[4];

        for (int i = 6; i <= 9; i++) {
            results[i - 6] = number * i;
        }

        for (int i = 6; i <= 9; i++) {
            System.out.println(number + " * " + i + " = " + results[i - 6]);
        }

        input.close();
    }
}

// Program 6: Mean height
import java.util.Scanner;

class MeanHeight {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double[] heights = new double[11];
        double sum = 0.0;

        for (int i = 0; i < heights.length; i++) {
            System.out.print("Enter height of player " + (i + 1) + ": ");
            heights[i] = input.nextDouble();
            sum += heights[i];
        }

        double mean = sum / heights.length;
        System.out.println("Mean height of football team: " + mean);

        input.close();
    }
}

// Program 7: Save odd and even numbers in arrays
import java.util.Scanner;

class OddEvenSeparator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int number = input.nextInt();

        if (number <= 0) {
            System.err.println("Invalid number. Enter a positive integer.");
            System.exit(0);
        }

        int[] oddNumbers = new int[number / 2 + 1];
        int[] evenNumbers = new int[number / 2 + 1];
        int oddIndex = 0, evenIndex = 0;

        for (int i = 1; i <= number; i++) {
            if (i % 2 == 0) {
                evenNumbers[evenIndex++] = i;
            } else {
                oddNumbers[oddIndex++] = i;
            }
        }

        System.out.println("Odd Numbers:");
        for (int i = 0; i < oddIndex; i++) {
            System.out.print(oddNumbers[i] + " ");
        }
        System.out.println("\nEven Numbers:");
        for (int i = 0; i < evenIndex; i++) {
            System.out.print(evenNumbers[i] + " ");
        }

        input.close();
    }
}
