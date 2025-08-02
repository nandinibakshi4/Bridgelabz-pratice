//level2 methods

// Problem 1: Factors and Computations
class FactorAnalyzer {
    public static int[] findFactors(int number) {
        int count = 0;
        for (int i = 1; i <= number; i++) if (number % i == 0) count++;

        int[] factors = new int[count];
        int index = 0;
        for (int i = 1; i <= number; i++) {
            if (number % i == 0) {
                factors[index++] = i;
            }
        }
        return factors;
    }

    public static int sum(int[] array) {
        int sum = 0;
        for (int n : array) sum += n;
        return sum;
    }

    public static long product(int[] array) {
        long product = 1;
        for (int n : array) product *= n;
        return product;
    }

    public static int sumOfSquares(int[] array) {
        int sum = 0;
        for (int n : array) sum += Math.pow(n, 2);
        return sum;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int number = sc.nextInt();
        int[] factors = findFactors(number);
        System.out.println("Factors: " + Arrays.toString(factors));
        System.out.println("Sum: " + sum(factors));
        System.out.println("Sum of Squares: " + sumOfSquares(factors));
        System.out.println("Product: " + product(factors));
    }
}

// Problem 2: Sum of Natural Numbers (Recursion vs Formula)
class NaturalNumberSum {
    public static int recursiveSum(int n) {
        if (n == 1) return 1;
        return n + recursiveSum(n - 1);
    }

    public static int formulaSum(int n) {
        return n * (n + 1) / 2;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a natural number: ");
        int n = sc.nextInt();
        if (n < 1) {
            System.out.println("Not a natural number.");
            return;
        }
        int recSum = recursiveSum(n);
        int formSum = formulaSum(n);
        System.out.println("Recursive Sum: " + recSum);
        System.out.println("Formula Sum: " + formSum);
    }
}

// Problem 3: Leap Year Checker
class LeapYearChecker {
    public static boolean isLeapYear(int year) {
        return (year >= 1582) && ((year % 400 == 0) || (year % 4 == 0 && year % 100 != 0));
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a year: ");
        int year = sc.nextInt();
        System.out.println(year + (isLeapYear(year) ? " is a Leap Year." : " is NOT a Leap Year."));
    }
}

// Problem 4: Unit Converter Utility
class UnitConverter {
    public static double convertKmToMiles(double km) { return km * 0.621371; }
    public static double convertMilesToKm(double miles) { return miles * 1.60934; }
    public static double convertMetersToFeet(double meters) { return meters * 3.28084; }
    public static double convertFeetToMeters(double feet) { return feet * 0.3048; }
    public static double convertYardsToFeet(double yards) { return yards * 3; }
    public static double convertFeetToYards(double feet) { return feet * 0.333333; }
    public static double convertMetersToInches(double meters) { return meters * 39.3701; }
    public static double convertInchesToMeters(double inches) { return inches * 0.0254; }
    public static double convertInchesToCm(double inches) { return inches * 2.54; }
    public static double convertFahrenheitToCelsius(double f) { return (f - 32) * 5 / 9; }
    public static double convertCelsiusToFahrenheit(double c) { return (c * 9 / 5) + 32; }
    public static double convertPoundsToKg(double pounds) { return pounds * 0.453592; }
    public static double convertKgToPounds(double kg) { return kg * 2.20462; }
    public static double convertGallonsToLiters(double gallons) { return gallons * 3.78541; }
    public static double convertLitersToGallons(double liters) { return liters * 0.264172; }
}

// Problem 5: Student Vote Checker
class StudentVoteChecker {
    public boolean canStudentVote(int age) {
        if (age < 0) return false;
        return age >= 18;
    }

    public static void main(String[] args) {
        StudentVoteChecker svc = new StudentVoteChecker();
        Scanner sc = new Scanner(System.in);
        int[] ages = new int[10];
        for (int i = 0; i < ages.length; i++) {
            System.out.print("Enter age for student " + (i + 1) + ": ");
            ages[i] = sc.nextInt();
            System.out.println("Can vote? " + svc.canStudentVote(ages[i]));
        }
    }
}

// Problem 6: Youngest and Tallest among 3 friends
class FriendsAnalyzer {
    public static int findYoungest(int[] ages) {
        int min = 0;
        for (int i = 1; i < ages.length; i++) if (ages[i] < ages[min]) min = i;
        return min;
    }

    public static int findTallest(double[] heights) {
        int max = 0;
        for (int i = 1; i < heights.length; i++) if (heights[i] > heights[max]) max = i;
        return max;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String[] names = {"Amar", "Akbar", "Anthony"};
        int[] ages = new int[3];
        double[] heights = new double[3];

        for (int i = 0; i < 3; i++) {
            System.out.print("Enter age for " + names[i] + ": ");
            ages[i] = sc.nextInt();
            System.out.print("Enter height in cm for " + names[i] + ": ");
            heights[i] = sc.nextDouble();
        }

        int youngest = findYoungest(ages);
        int tallest = findTallest(heights);
        System.out.println("Youngest is: " + names[youngest]);
        System.out.println("Tallest is: " + names[tallest]);
    }
}

// Problem 7: Number Analysis
class NumberAnalysis {
    public static boolean isPositive(int number) { return number >= 0; }
    public static boolean isEven(int number) { return number % 2 == 0; }
    public static int compare(int a, int b) {
        if (a > b) return 1;
        else if (a == b) return 0;
        else return -1;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] numbers = new int[5];
        for (int i = 0; i < numbers.length; i++) {
            System.out.print("Enter number " + (i + 1) + ": ");
            numbers[i] = sc.nextInt();
            if (!isPositive(numbers[i])) {
                System.out.println("Negative number");
            } else {
                System.out.println(isEven(numbers[i]) ? "Positive Even" : "Positive Odd");
            }
        }
        int result = compare(numbers[0], numbers[4]);
        System.out.println("First vs Last: " + (result == 0 ? "Equal" : (result == 1 ? "First > Last" : "First < Last")));
    }
}

// Problem 8: BMI Calculator for 10 members
class BMICalculator {
    public static double calculateBMI(double weight, double heightCm) {
        double heightM = heightCm / 100;
        return weight / (heightM * heightM);
    }

    public static String getBMIStatus(double bmi) {
        if (bmi < 18.5) return "Underweight";
        if (bmi < 25) return "Normal";
        if (bmi < 30) return "Overweight";
        return "Obese";
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double[][] data = new double[10][3];
        String[] status = new String[10];

        for (int i = 0; i < 10; i++) {
            System.out.print("Enter weight(kg) for person " + (i + 1) + ": ");
            data[i][0] = sc.nextDouble();
            System.out.print("Enter height(cm) for person " + (i + 1) + ": ");
            data[i][1] = sc.nextDouble();
            data[i][2] = calculateBMI(data[i][0], data[i][1]);
            status[i] = getBMIStatus(data[i][2]);
        }

        for (int i = 0; i < 10; i++) {
            System.out.printf("Person %d => Weight: %.2f kg, Height: %.2f cm, BMI: %.2f (%s)%n",
                    (i + 1), data[i][0], data[i][1], data[i][2], status[i]);
        }
    }
}

// Problem 9: Quadratic Equation Solver
class QuadraticSolver {
    public static double[] findRoots(double a, double b, double c) {
        double delta = b * b - 4 * a * c;
        if (delta > 0) {
            return new double[]{
                    (-b + Math.sqrt(delta)) / (2 * a),
                    (-b - Math.sqrt(delta)) / (2 * a)
            };
        } else if (delta == 0) {
            return new double[]{-b / (2 * a)};
        } else {
            return new double[]{};
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a: "); double a = sc.nextDouble();
        System.out.print("Enter b: "); double b = sc.nextDouble();
        System.out.print("Enter c: "); double c = sc.nextDouble();

        double[] roots = findRoots(a, b, c);
        if (roots.length == 2) System.out.println("Roots: " + roots[0] + ", " + roots[1]);
        else if (roots.length == 1) System.out.println("Root: " + roots[0]);
        else System.out.println("No Real Roots");
    }
}

// Problem 10: Random Number Stats
class RandomStatsGenerator {
    public static int[] generate4DigitRandomArray(int size) {
        int[] arr = new int[size];
        for (int i = 0; i < size; i++) arr[i] = (int) (Math.random() * 9000) + 1000;
        return arr;
    }

    public static double[] findAverageMinMax(int[] numbers) {
        int sum = 0, min = numbers[0], max = numbers[0];
        for (int n : numbers) {
            sum += n;
            if (n < min) min = n;
            if (n > max) max = n;
        }
        return new double[]{(double) sum / numbers.length, min, max};
    }

    public static void main(String[] args) {
        int[] numbers = generate4DigitRandomArray(5);
        System.out.println("Generated Numbers: " + Arrays.toString(numbers));
        double[] result = findAverageMinMax(numbers);
        System.out.printf("Average: %.2f, Min: %.0f, Max: %.0f%n", result[0], result[1], result[2]);
    }
}
