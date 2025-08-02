//METHODS assignment2

// Program 1: Sum of digits using array and Math.random()
class SumOfDigits {
    public int get4DigitRandomNumber() {
        return (int) (Math.random() * 9000) + 1000;
    }

    public int countDigits(int number) {
        int count = 0, temp = number;
        while (temp > 0) {
            count++;
            temp /= 10;
        }
        return count;
    }

    public int[] getDigits(int number, int count) {
        int[] digits = new int[count];
        int temp = number;
        for (int i = count - 1; i >= 0; i--) {
            digits[i] = temp % 10;
            temp /= 10;
        }
        return digits;
    }

    public int sumArray(int[] array) {
        int sum = 0;
        for (int value : array) {
            sum += value;
        }
        return sum;
    }

    public static void main(String[] args) {
        SumOfDigits obj = new SumOfDigits();
        int number = obj.get4DigitRandomNumber();
        System.out.println("The Random Number is: " + number);
        int count = obj.countDigits(number);
        int[] digits = obj.getDigits(number, count);
        int sum = obj.sumArray(digits);
        System.out.println("Sum of Digits: " + sum);
    }
}

// Program 2: Simple Interest
import java.util.Scanner;
class SimpleInterestCalculator {
    public static double calculateSimpleInterest(double principal, double rate, double time) {
        return (principal * rate * time) / 100;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Principal: ");
        double principal = sc.nextDouble();
        System.out.print("Enter Rate of Interest: ");
        double rate = sc.nextDouble();
        System.out.print("Enter Time (in years): ");
        double time = sc.nextDouble();
        double si = calculateSimpleInterest(principal, rate, time);
        System.out.println("The Simple Interest is " + si + " for Principal " + principal + ", Rate of Interest " + rate + " and Time " + time);
        sc.close();
    }
}

// Program 3: Maximum Handshakes
import java.util.Scanner;
class HandshakeCalculator {
    public static int calculateHandshakes(int numberOfStudents) {
        return (numberOfStudents * (numberOfStudents - 1)) / 2;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number of students: ");
        int n = sc.nextInt();
        int handshakes = calculateHandshakes(n);
        System.out.println("Maximum number of handshakes possible: " + handshakes);
        sc.close();
    }
}

// Program 4: Athlete Rounds in Triangular Park
import java.util.Scanner;
class AthleteRoundsCalculator {
    public static int calculateRounds(double side1, double side2, double side3) {
        double perimeter = side1 + side2 + side3;
        double distance = 5000; // in meters
        return (int) Math.ceil(distance / perimeter);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter 3 sides of the triangle (in meters): ");
        double a = sc.nextDouble();
        double b = sc.nextDouble();
        double c = sc.nextDouble();
        int rounds = calculateRounds(a, b, c);
        System.out.println("The athlete must run " + rounds + " rounds to complete 5km.");
        sc.close();
    }
}

// Program 5: Check if number is positive, negative or zero
import java.util.Scanner;
class NumberCheck {
    public static int checkNumber(int number) {
        if (number > 0) return 1;
        else if (number < 0) return -1;
        else return 0;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int num = sc.nextInt();
        int result = checkNumber(num);
        if (result == 1)
            System.out.println("Positive number");
        else if (result == -1)
            System.out.println("Negative number");
        else
            System.out.println("Zero");
        sc.close();
    }
}

// Program 6: Spring Season Checker
import java.util.Scanner;
class SpringSeason {
    public static boolean isSpringSeason(int month, int day) {
        return (month == 3 && day >= 20) || (month == 6 && day <= 20) || (month == 4 || month == 5);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter month (1-12): ");
        int month = sc.nextInt();
        System.out.print("Enter day: ");
        int day = sc.nextInt();
        if (isSpringSeason(month, day))
            System.out.println("It's a Spring Season");
        else
            System.out.println("Not a Spring Season");
        sc.close();
    }
}

// Program 7: Sum of n Natural Numbers
import java.util.Scanner;
class NaturalSum {
    public static int sumNaturalNumbers(int n) {
        int sum = 0;
        for (int i = 1; i <= n; i++) sum += i;
        return sum;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int num = sc.nextInt();
        System.out.println("Sum of first " + num + " natural numbers: " + sumNaturalNumbers(num));
        sc.close();
    }
}

// Program 8: Find smallest and largest of 3 numbers
import java.util.Scanner;
class MinMaxFinder {
    public static int[] findSmallestAndLargest(int n1, int n2, int n3) {
        int smallest = Math.min(n1, Math.min(n2, n3));
        int largest = Math.max(n1, Math.max(n2, n3));
        return new int[]{smallest, largest};
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter 3 numbers: ");
        int a = sc.nextInt(), b = sc.nextInt(), c = sc.nextInt();
        int[] result = findSmallestAndLargest(a, b, c);
        System.out.println("Smallest: " + result[0] + ", Largest: " + result[1]);
        sc.close();
    }
}

// Program 9: Quotient and Remainder
import java.util.Scanner;
class DivisionHelper {
    public static int[] findRemainderAndQuotient(int number, int divisor) {
        int quotient = number / divisor;
        int remainder = number % divisor;
        return new int[]{quotient, remainder};
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number and divisor: ");
        int num = sc.nextInt(), divisor = sc.nextInt();
        int[] result = findRemainderAndQuotient(num, divisor);
        System.out.println("Quotient: " + result[0] + ", Remainder: " + result[1]);
        sc.close();
    }
}

// Program 10: Chocolate Distribution
import java.util.Scanner;
class ChocolateDistributor {
    public static int[] distributeChocolates(int chocolates, int children) {
        int each = chocolates / children;
        int leftover = chocolates % children;
        return new int[]{each, leftover};
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number of chocolates: ");
        int choco = sc.nextInt();
        System.out.print("Enter number of children: ");
        int kids = sc.nextInt();
        int[] result = distributeChocolates(choco, kids);
        System.out.println("Each child gets: " + result[0] + ", Remaining chocolates: " + result[1]);
        sc.close();
    }
}

// Program 11: Wind Chill Temperature
import java.util.Scanner;
class WindChillCalculator {
    public static double calculateWindChill(double temperature, double windSpeed) {
        return 35.74 + 0.6215 * temperature + (0.4275 * temperature - 35.75) * Math.pow(windSpeed, 0.16);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter temperature (F): ");
        double temp = sc.nextDouble();
        System.out.print("Enter wind speed (mph): ");
        double speed = sc.nextDouble();
        double chill = calculateWindChill(temp, speed);
        System.out.println("Wind Chill Temperature: " + chill);
        sc.close();
    }
}

// Program 12: Trigonometric Functions
import java.util.Scanner;
class TrigFunctionsCalculator {
    public static double[] calculateTrigonometricFunctions(double angle) {
        double radians = Math.toRadians(angle);
        double sin = Math.sin(radians);
        double cos = Math.cos(radians);
        double tan = Math.tan(radians);
        return new double[]{sin, cos, tan};
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter angle in degrees: ");
        double angle = sc.nextDouble();
        double[] trig = calculateTrigonometricFunctions(angle);
        System.out.println("Sine: " + trig[0] + ", Cosine: " + trig[1] + ", Tangent: " + trig[2]);
        sc.close();
    }
}
