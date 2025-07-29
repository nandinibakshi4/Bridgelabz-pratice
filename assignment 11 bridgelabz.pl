Program 1: Bonus Calculation for 10 Employees
📘 Statement:
Write a Java program for company Zara to calculate the bonus for 10 employees based on their years of service.

If service > 5 years → 5% bonus

Else → 2% bonus
The program should input salary and years of service of each employee, validate input, compute:

Bonus

New salary

Display each employee’s old salary, bonus, and new salary.

Also,  print total old salary, total bonus, and total new salary.

// Program Name: BonusCalculator
// Description: Calculate bonus and new salary for 10 employees

import java.util.Scanner;

public class BonusCalculator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        // Constants
        final int EMPLOYEE_COUNT = 10;
        final double BONUS_HIGH = 0.05; // 5% bonus
        final double BONUS_LOW = 0.02;  // 2% bonus

        // Declare arrays
        double[] salaries = new double[EMPLOYEE_COUNT];
        double[] yearsOfService = new double[EMPLOYEE_COUNT];
        double[] bonuses = new double[EMPLOYEE_COUNT];
        double[] newSalaries = new double[EMPLOYEE_COUNT];

        // Variables to store totals
        double totalBonus = 0.0;
        double totalOldSalary = 0.0;
        double totalNewSalary = 0.0;

        // Loop for input and validation
        for (int i = 0; i < EMPLOYEE_COUNT; i++) {
            System.out.println("\nEnter details for Employee " + (i + 1));
            System.out.print("Enter Salary: ");
            double salary = input.nextDouble();

            System.out.print("Enter Years of Service: ");
            double service = input.nextDouble();

            // Validate input
            if (salary <= 0 || service < 0) {
                System.err.println("Invalid salary or years of service. Please re-enter.");
                i--; // retry current employee
                continue;
            }

            salaries[i] = salary;
            yearsOfService[i] = service;
        }

        // Calculate bonus and new salary
        for (int i = 0; i < EMPLOYEE_COUNT; i++) {
            double bonusRate = (yearsOfService[i] > 5) ? BONUS_HIGH : BONUS_LOW;
            bonuses[i] = salaries[i] * bonusRate;
            newSalaries[i] = salaries[i] + bonuses[i];

            // Update totals
            totalBonus += bonuses[i];
            totalOldSalary += salaries[i];
            totalNewSalary += newSalaries[i];
        }

        // Output the results
        System.out.println("\n--- Employee Salary Summary ---");
        for (int i = 0; i < EMPLOYEE_COUNT; i++) {
            System.out.printf("Employee %d -> Old Salary: %.2f | Bonus: %.2f | New Salary: %.2f\n",
                    (i + 1), salaries[i], bonuses[i], newSalaries[i]);
        }

        // Display Totals
        System.out.printf("\nTotal Old Salary: %.2f\n", totalOldSalary);
        System.out.printf("Total Bonus Paid: %.2f\n", totalBonus);
        System.out.printf("Total New Salary: %.2f\n", totalNewSalary);

        input.close();
    }
}

Program 2: Youngest and Tallest Among Friends
📘 Statement:
Write a Java program to find the youngest and tallest among 3 friends: Amar, Akbar, and Anthony.

Take input for their ages and heights.

Use arrays to store the values.

Use a loop to find the youngest and tallest friend.

Display their names with age/height.

// Program Name: YoungestTallestFinder
// Description: Find youngest and tallest among 3 friends

import java.util.Scanner;

public class YoungestTallestFinder {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        // Names of the friends
        String[] names = {"Amar", "Akbar", "Anthony"};

        // Arrays to store ages and heights
        int[] ages = new int[3];
        double[] heights = new double[3];

        // Input loop
        for (int i = 0; i < names.length; i++) {
            System.out.println("\nEnter details for " + names[i]);

            System.out.print("Enter Age: ");
            ages[i] = input.nextInt();

            System.out.print("Enter Height (in cm): ");
            heights[i] = input.nextDouble();
        }

        // Find youngest and tallest
        int youngestIndex = 0;
        int tallestIndex = 0;

        for (int i = 1; i < names.length; i++) {
            if (ages[i] < ages[youngestIndex]) {
                youngestIndex = i;
            }
            if (heights[i] > heights[tallestIndex]) {
                tallestIndex = i;
            }
        }

        // Display results
        System.out.println("\nYoungest Friend: " + names[youngestIndex] + " (Age: " + ages[youngestIndex] + ")");
        System.out.println("Tallest Friend: " + names[tallestIndex] + " (Height: " + heights[tallestIndex] + " cm)");

        input.close();
    }
}

 Program 3: Largest and Second Largest Digit
📘 Statement:
Write a Java program to find the largest and second-largest digit in a number.

Store the digits in an array.

Resize array if needed (dynamic array concept).

Display the results after processing all digits.

// Program Name: LargestDigitsFinder
// Description: Find largest and second-largest digit in a number

import java.util.Scanner;

public class LargestDigitsFinder {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        // Take input number
        System.out.print("Enter a positive number: ");
        int number = input.nextInt();

        if (number <= 0) {
            System.err.println("Invalid number. Please enter a positive number.");
            System.exit(0);
        }

        // Initial array size and index
        int maxDigit = 10;
        int[] digits = new int[maxDigit];
        int index = 0;

        // Extract digits and resize if needed
        while (number > 0) {
            if (index == maxDigit) {
                maxDigit += 10;
                int[] temp = new int[maxDigit];
                for (int i = 0; i < digits.length; i++) {
                    temp[i] = digits[i];
                }
                digits = temp;
            }
            digits[index++] = number % 10;
            number /= 10;
        }

        // Find largest and second-largest digits
        int largest = -1;
        int secondLargest = -1;

        for (int i = 0; i < index; i++) {
            if (digits[i] > largest) {
                secondLargest = largest;
                largest = digits[i];
            } else if (digits[i] > secondLargest && digits[i] != largest) {
                secondLargest = digits[i];
            }
        }

        // Display results
        System.out.println("\nLargest Digit: " + largest);
        if (secondLargest != -1)
            System.out.println("Second Largest Digit: " + secondLargest);
        else
            System.out.println("Second Largest Digit not found (All digits are the same)");

        input.close();
    }
}

Program 4: Reverse the Digits of a Number

import java.util.Scanner;

public class ReverseDigits {
    public static void main(String[] args) {
        // Create Scanner object
        Scanner sc = new Scanner(System.in);

        // Step 1: Take user input
        System.out.print("Enter a number: ");
        int number = sc.nextInt();

        // Step 2: Count digits
        int tempNumber = number, count = 0;
        while (tempNumber > 0) {
            count++;
            tempNumber /= 10;
        }

        // Step 3: Store digits in array
        int[] digits = new int[count];
        tempNumber = number;
        int index = 0;
        while (tempNumber > 0) {
            digits[index++] = tempNumber % 10;
            tempNumber /= 10;
        }

        // Step 4: Display array in reverse (which is the original order)
        System.out.print("Reversed number: ");
        for (int i = 0; i < count; i++) {
            System.out.print(digits[i]);
        }
    }
}

Program 5: Dynamic Array Handling to Find Largest and Second Largest Digit

import java.util.Scanner;

public class DynamicDigitArray {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Input number
        System.out.print("Enter a number: ");
        int number = sc.nextInt();

        int maxDigit = 5; // initial size
        int[] digits = new int[maxDigit];

        int index = 0;
        while (number > 0) {
            // Expand array if index equals maxDigit
            if (index == maxDigit) {
                maxDigit += 10; // increase size
                int[] temp = new int[maxDigit];
                for (int i = 0; i < digits.length; i++) {
                    temp[i] = digits[i]; // copy values
                }
                digits = temp; // reassign
            }
            digits[index++] = number % 10;
            number /= 10;
        }

        // Find largest and second largest
        int largest = -1, secondLargest = -1;
        for (int i = 0; i < index; i++) {
            if (digits[i] > largest) {
                secondLargest = largest;
                largest = digits[i];
            } else if (digits[i] > secondLargest && digits[i] != largest) {
                secondLargest = digits[i];
            }
        }

        System.out.println("Largest digit: " + largest);
        System.out.println("Second Largest digit: " + secondLargest);
    }
}

Program 6: BMI and Status for Each Person (1D arrays)

import java.util.Scanner;

public class BMIStatus {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Input number of persons
        System.out.print("Enter number of persons: ");
        int n = sc.nextInt();

        double[] height = new double[n];
        double[] weight = new double[n];
        double[] bmi = new double[n];
        String[] status = new String[n];

        // Input height and weight
        for (int i = 0; i < n; i++) {
            System.out.print("Enter height in meters for person " + (i + 1) + ": ");
            height[i] = sc.nextDouble();
            System.out.print("Enter weight in kg for person " + (i + 1) + ": ");
            weight[i] = sc.nextDouble();

            bmi[i] = weight[i] / (height[i] * height[i]);

            if (bmi[i] < 18.5)
                status[i] = "Underweight";
            else if (bmi[i] < 25)
                status[i] = "Normal";
            else if (bmi[i] < 30)
                status[i] = "Overweight";
            else
                status[i] = "Obese";
        }

        // Display details
        System.out.println("Height\tWeight\tBMI\tStatus");
        for (int i = 0; i < n; i++) {
            System.out.println(height[i] + "\t" + weight[i] + "\t" + String.format("%.2f", bmi[i]) + "\t" + status[i]);
        }
    }
}

Program 7: BMI using 2D Array

import java.util.Scanner;

public class BMIMultiArray {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Input number of persons
        System.out.print("Enter number of persons: ");
        int n = sc.nextInt();

        double[][] personData = new double[n][3]; // [height, weight, BMI]
        String[] status = new String[n];

        for (int i = 0; i < n; i++) {
            double height, weight;

            // Validate height
            do {
                System.out.print("Enter height in meters for person " + (i + 1) + ": ");
                height = sc.nextDouble();
            } while (height <= 0);

            // Validate weight
            do {
                System.out.print("Enter weight in kg for person " + (i + 1) + ": ");
                weight = sc.nextDouble();
            } while (weight <= 0);

            personData[i][0] = height;
            personData[i][1] = weight;
            personData[i][2] = weight / (height * height);

            if (personData[i][2] < 18.5)
                status[i] = "Underweight";
            else if (personData[i][2] < 25)
                status[i] = "Normal";
            else if (personData[i][2] < 30)
                status[i] = "Overweight";
            else
                status[i] = "Obese";
        }

        System.out.println("Height\tWeight\tBMI\tStatus");
        for (int i = 0; i < n; i++) {
            System.out.println(personData[i][0] + "\t" + personData[i][1] + "\t" + String.format("%.2f", personData[i][2]) + "\t" + status[i]);
        }
    }
}

 Program 8: Student Marks, Percentage and Grade (1D arrays)
 
 import java.util.Scanner;

public class StudentGrades {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of students: ");
        int n = sc.nextInt();

        int[] phy = new int[n], chem = new int[n], math = new int[n];
        double[] percent = new double[n];
        String[] grade = new String[n];

        for (int i = 0; i < n; i++) {
            System.out.println("Enter marks for Student " + (i + 1));

            System.out.print("Physics: ");
            phy[i] = sc.nextInt();
            System.out.print("Chemistry: ");
            chem[i] = sc.nextInt();
            System.out.print("Maths: ");
            math[i] = sc.nextInt();

            percent[i] = (phy[i] + chem[i] + math[i]) / 3.0;

            if (percent[i] >= 90)
                grade[i] = "A";
            else if (percent[i] >= 75)
                grade[i] = "B";
            else if (percent[i] >= 60)
                grade[i] = "C";
            else if (percent[i] >= 40)
                grade[i] = "D";
            else
                grade[i] = "F";
        }

        System.out.println("Physics\tChem\tMaths\t%age\tGrade");
        for (int i = 0; i < n; i++) {
            System.out.println(phy[i] + "\t" + chem[i] + "\t" + math[i] + "\t" + String.format("%.2f", percent[i]) + "\t" + grade[i]);
        }
    }
}

Program 9: Student Marks using 2D Array
 
import java.util.Scanner;

public class StudentMarks2D {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of students: ");
        int n = sc.nextInt();

        int[][] marks = new int[n][3]; // [phy, chem, math]
        double[] percent = new double[n];
        String[] grade = new String[n];

        for (int i = 0; i < n; i++) {
            System.out.println("Enter marks for Student " + (i + 1));

            for (int j = 0; j < 3; j++) {
                String subject = j == 0 ? "Physics" : j == 1 ? "Chemistry" : "Maths";
                System.out.print(subject + ": ");
                marks[i][j] = sc.nextInt();

                if (marks[i][j] < 0) {
                    System.out.println("Invalid! Enter positive value.");
                    j--;
                }
            }

            percent[i] = (marks[i][0] + marks[i][1] + marks[i][2]) / 3.0;

            if (percent[i] >= 90)
                grade[i] = "A";
            else if (percent[i] >= 75)
                grade[i] = "B";
            else if (percent[i] >= 60)
                grade[i] = "C";
            else if (percent[i] >= 40)
                grade[i] = "D";
            else
                grade[i] = "F";
        }

        System.out.println("Physics\tChem\tMaths\t%age\tGrade");
        for (int i = 0; i < n; i++) {
            System.out.println(marks[i][0] + "\t" + marks[i][1] + "\t" + marks[i][2] + "\t" + String.format("%.2f", percent[i]) + "\t" + grade[i]);
        }
    }
}

Program 10: Frequency of Each Digit in a Number

import java.util.Scanner;

public class DigitFrequency {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Input number
        System.out.print("Enter a number: ");
        int number = sc.nextInt();

        int[] freq = new int[10];
        int[] digits = new int[20];
        int index = 0;

        while (number > 0) {
            int digit = number % 10;
            freq[digit]++;
            digits[index++] = digit;
            number /= 10;
        }

        System.out.println("Digit\tFrequency");
        for (int i = 0; i < 10; i++) {
            if (freq[i] > 0) {
                System.out.println(i + "\t" + freq[i]);
            }
        }
    }
}



