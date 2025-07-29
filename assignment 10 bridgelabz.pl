//LEVEL 1 ARRAY PROGRAM

// Program 1: Check voting eligibility of 10 students based on age
import java.util.Scanner;

class VotingEligibility {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int totalStudents = 10;
        int[] studentAges = new int[totalStudents];

        // Input and validation
        for (int i = 0; i < studentAges.length; i++) {
            System.out.print("Enter age of student " + (i + 1) + ": ");
            int age = scanner.nextInt();
            if (age < 0) {
                System.out.println("Invalid age. Please enter again.");
                i--; // retry input for same student
                continue;
            }
            studentAges[i] = age;
        }

        // Check eligibility
        for (int i = 0; i < studentAges.length; i++) {
            int age = studentAges[i];
            if (age >= 18) {
                System.out.println("Student with age " + age + " can vote.");
            } else {
                System.out.println("Student with age " + age + " cannot vote.");
            }
        }

        scanner.close();
    }
}

// Program 2: Analyze 5 numbers - positive/negative/zero and even/odd, then compare first and last
class NumberAnalysis {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] numbers = new int[5];

        for (int i = 0; i < numbers.length; i++) {
            System.out.print("Enter number " + (i + 1) + ": ");
            numbers[i] = scanner.nextInt();
        }

        for (int i = 0; i < numbers.length; i++) {
            int num = numbers[i];
            if (num > 0) {
                System.out.println(num + " is Positive and " + (num % 2 == 0 ? "Even" : "Odd"));
            } else if (num < 0) {
                System.out.println(num + " is Negative");
            } else {
                System.out.println(num + " is Zero");
            }
        }

        int first = numbers[0];
        int last = numbers[numbers.length - 1];
        if (first == last) {
            System.out.println("First and last elements are equal");
        } else if (first > last) {
            System.out.println("First element is greater than the last");
        } else {
            System.out.println("Last element is greater than the first");
        }

        scanner.close();
    }
}

// Program 3: Multiplication table of a number (1 to 10)
class MultiplicationTable {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int number = scanner.nextInt();
        int[] table = new int[10];

        for (int i = 0; i < table.length; i++) {
            table[i] = number * (i + 1);
        }

        for (int i = 0; i < table.length; i++) {
            System.out.println(number + " * " + (i + 1) + " = " + table[i]);
        }

        scanner.close();
    }
}

// Program 4: Store up to 10 values or until 0/negative is entered and show sum
class StoreValuesWithSum {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double[] values = new double[10];
        double total = 0.0;
        int index = 0;

        while (true) {
            if (index == values.length) break;

            System.out.print("Enter value (0 or negative to stop): ");
            double val = scanner.nextDouble();

            if (val <= 0) break;

            values[index] = val;
            index++;
        }

        for (int i = 0; i < index; i++) {
            total += values[i];
        }

        System.out.println("Total of all entered values: " + total);

        scanner.close();
    }
}
