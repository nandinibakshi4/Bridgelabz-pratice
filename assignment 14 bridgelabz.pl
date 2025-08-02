//METHODS assignment 3

// Program 1: Factors Analysis
public class FactorAnalyzer {

    public static int[] getFactors(int number) {
        int count = 0;
        for (int i = 1; i <= number; i++) {
            if (number % i == 0) count++;
        }
        int[] factors = new int[count];
        int index = 0;
        for (int i = 1; i <= number; i++) {
            if (number % i == 0) factors[index++] = i;
        }
        return factors;
    }

    public static int calculateSum(int[] array) {
        int sum = 0;
        for (int value : array) sum += value;
        return sum;
    }

    public static int calculateProduct(int[] array) {
        int product = 1;
        for (int value : array) product *= value;
        return product;
    }

    public static int calculateSumOfSquares(int[] array) {
        int sum = 0;
        for (int value : array) sum += Math.pow(value, 2);
        return sum;
    }

    public static void main(String[] args) {
        java.util.Scanner scanner = new java.util.Scanner(System.in);
        System.out.print("Enter a number to find its factors: ");
        int number = scanner.nextInt();

        int[] factors = getFactors(number);
        System.out.print("Factors: ");
        for (int factor : factors) System.out.print(factor + " ");

        System.out.println("\nSum of Factors: " + calculateSum(factors));
        System.out.println("Product of Factors: " + calculateProduct(factors));
        System.out.println("Sum of Squares of Factors: " + calculateSumOfSquares(factors));
    }
}

// Program 2: Recursive Sum of Natural Numbers
public class RecursiveSum {
    public static int findSumUsingRecursion(int n) {
        if (n == 1) return 1;
        return n + findSumUsingRecursion(n - 1);
    }

    public static int findSumUsingFormula(int n) {
        return n * (n + 1) / 2;
    }

    public static void main(String[] args) {
        java.util.Scanner scanner = new java.util.Scanner(System.in);
        System.out.print("Enter a natural number: ");
        int n = scanner.nextInt();

        if (n <= 0) {
            System.out.println("Invalid input. Please enter a natural number.");
            return;
        }

        int recursiveSum = findSumUsingRecursion(n);
        int formulaSum = findSumUsingFormula(n);

        System.out.println("Recursive Sum: " + recursiveSum);
        System.out.println("Formula Sum: " + formulaSum);
        System.out.println("Both results are " + (recursiveSum == formulaSum ? "equal." : "not equal."));
    }
}

// Program 3: Leap Year Checker
public class LeapYearChecker {
    public static boolean isLeapYear(int year) {
        if (year < 1582) return false;
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
    }

    public static void main(String[] args) {
        java.util.Scanner scanner = new java.util.Scanner(System.in);
        System.out.print("Enter a year: ");
        int year = scanner.nextInt();

        if (isLeapYear(year)) {
            System.out.println("The year " + year + " is a Leap Year.");
        } else {
            System.out.println("The year " + year + " is not a Leap Year.");
        }
    }
}


    // 1. Factor Analysis
    public static void analyzeFactors(int number) {
        int sum = 0, product = 1, squareSum = 0;
        System.out.print("Factors of " + number + ": ");
        for (int i = 1; i <= number; i++) {
            if (number % i == 0) {
                System.out.print(i + " ");
                sum += i;
                product *= i;
                squareSum += i * i;
            }
        }
        System.out.println("\nSum: " + sum + ", Product: " + product + ", Sum of Squares: " + squareSum);
    }

    // 2. Recursive sum and formula comparison
    public static int recursiveSum(int n) {
        if (n == 1) return 1;
        return n + recursiveSum(n - 1);
    }

    public static void compareRecursiveSumWithFormula(int n) {
        int recursive = recursiveSum(n);
        int formula = n * (n + 1) / 2;
        System.out.println("Recursive Sum: " + recursive);
        System.out.println("Formula Sum: " + formula);
    }

    // 3. Leap Year Checker
    public static boolean isLeapYear(int year) {
        return (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0);
    }

    // 4. Unit Conversion (inches to cm)
    public static double convertInchesToCentimeters(double inches) {
        return inches * 2.54;
    }

    // 5. Voting Eligibility
    public static boolean isEligibleToVote(int age) {
        return age >= 18;
    }

    // 6. Youngest and Tallest among 3 persons
    public static void findYoungestAndTallest(String[] names, int[] ages, int[] heights) {
        int youngestIndex = 0, tallestIndex = 0;
        for (int i = 1; i < 3; i++) {
            if (ages[i] < ages[youngestIndex]) youngestIndex = i;
            if (heights[i] > heights[tallestIndex]) tallestIndex = i;
        }
        System.out.println("Youngest: " + names[youngestIndex]);
        System.out.println("Tallest: " + names[tallestIndex]);
    }

    // 7. Check Positive/Negative and Even/Odd
    public static void checkNumberProperties(int num) {
        System.out.println(num + " is " + (num >= 0 ? "Positive" : "Negative"));
        System.out.println(num + " is " + (num % 2 == 0 ? "Even" : "Odd"));
    }

    // 8. BMI Calculator
    public static double calculateBMI(double weightKg, double heightMeters) {
        return weightKg / (heightMeters * heightMeters);
    }

    // 9. Quadratic Roots
    public static void findQuadraticRoots(double a, double b, double c) {
        double discriminant = b * b - 4 * a * c;
        if (discriminant > 0) {
            double root1 = (-b + Math.sqrt(discriminant)) / (2 * a);
            double root2 = (-b - Math.sqrt(discriminant)) / (2 * a);
            System.out.println("Real and Distinct Roots: " + root1 + ", " + root2);
        } else if (discriminant == 0) {
            double root = -b / (2 * a);
            System.out.println("Real and Equal Roots: " + root);
        } else {
            System.out.println("Complex Roots");
        }
    }

    // 10. Random Numbers and Stats
    public static void generateRandomStats(int count) {
        Random rand = new Random();
        int sum = 0, max = Integer.MIN_VALUE, min = Integer.MAX_VALUE;
        System.out.print("Generated Numbers: ");
        for (int i = 0; i < count; i++) {
            int num = rand.nextInt(100); // 0–99
            System.out.print(num + " ");
            sum += num;
            if (num > max) max = num;
            if (num < min) min = num;
        }
        double average = (double) sum / count;
        System.out.println("\nSum: " + sum + ", Average: " + average + ", Max: " + max + ", Min: " + min);
    }

    public static void main(String[] args) {
        // You can call any method here to test
        analyzeFactors(12);
        compareRecursiveSumWithFormula(10);
        System.out.println("Is 2024 a leap year? " + isLeapYear(2024));
        System.out.println("Inches to cm: 10 in = " + convertInchesToCentimeters(10) + " cm");
        System.out.println("Age 20 eligible to vote? " + isEligibleToVote(20));

        String[] names = {"Alice", "Bob", "Charlie"};
        int[] ages = {22, 18, 20};
        int[] heights = {160, 170, 165};
        findYoungestAndTallest(names, ages, heights);

        checkNumberProperties(-5);
        System.out.println("BMI: " + calculateBMI(55, 1.6));
        findQuadraticRoots(1, -3, 2);
        generateRandomStats(5);
    }
}
