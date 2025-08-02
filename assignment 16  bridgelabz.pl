// Java methods Practice Programs - Level 1 with Best Practices

// Program 1: Calculate Simple Interest
public class SimpleInterestCalculator {
    public static double calculateSimpleInterest(double principal, double rate, double time) {
        return (principal * rate * time) / 100;
    }

    public static void main(String[] args) {
        double principal = 10000;
        double rate = 5.5;
        double time = 3;
        double simpleInterest = calculateSimpleInterest(principal, rate, time);
        System.out.println("The Simple Interest is " + simpleInterest + " for Principal " + principal + ", Rate of Interest " + rate + " and Time " + time);
    }
}

// Program 2: Maximum Handshakes
public class HandshakeCalculator {
    public static int calculateHandshakes(int numberOfStudents) {
        return (numberOfStudents * (numberOfStudents - 1)) / 2;
    }

    public static void main(String[] args) {
        int students = 10;
        int handshakes = calculateHandshakes(students);
        System.out.println("Maximum possible handshakes among " + students + " students: " + handshakes);
    }
}

// Program 3: Triangular Park Rounds
public class TriangularParkRunner {
    public static int calculateRounds(double side1, double side2, double side3, double totalDistanceKm) {
        double perimeter = side1 + side2 + side3;
        double totalDistanceMeters = totalDistanceKm * 1000;
        return (int) Math.ceil(totalDistanceMeters / perimeter);
    }

    public static void main(String[] args) {
        int rounds = calculateRounds(100, 150, 120, 5);
        System.out.println("Number of rounds needed: " + rounds);
    }
}

// Program 4: Check Number Type
public class NumberTypeChecker {
    public static int checkNumberType(int number) {
        if (number > 0) return 1;
        else if (number < 0) return -1;
        else return 0;
    }

    public static void main(String[] args) {
        int result = checkNumberType(-8);
        System.out.println("Result: " + result);
    }
}

// Program 5: Spring Season Checker
public class SpringSeason {
    public static boolean isSpringSeason(int month, int day) {
        return (month == 3 && day >= 20) || (month > 3 && month < 6) || (month == 6 && day <= 20);
    }

    public static void main(String[] args) {
        boolean result = isSpringSeason(4, 15);
        System.out.println(result ? "It's a Spring Season" : "Not a Spring Season");
    }
}

// Program 6: Sum of Natural Numbers using Loop
public class NaturalNumberSum {
    public static int findSumUsingLoop(int n) {
        int sum = 0;
        for (int i = 1; i <= n; i++) {
            sum += i;
        }
        return sum;
    }

    public static void main(String[] args) {
        int sum = findSumUsingLoop(100);
        System.out.println("Sum of first 100 natural numbers: " + sum);
    }
}

// Program 7: Smallest and Largest of 3 Numbers
public class MinMaxFinder {
    public static int[] findSmallestAndLargest(int number1, int number2, int number3) {
        int smallest = Math.min(number1, Math.min(number2, number3));
        int largest = Math.max(number1, Math.max(number2, number3));
        return new int[]{smallest, largest};
    }

    public static void main(String[] args) {
        int[] result = findSmallestAndLargest(23, 89, 12);
        System.out.println("Smallest: " + result[0] + ", Largest: " + result[1]);
    }
}

// Program 8: Quotient and Remainder
public class DivisionCalculator {
    public static int[] findRemainderAndQuotient(int number, int divisor) {
        int quotient = number / divisor;
        int remainder = number % divisor;
        return new int[]{quotient, remainder};
    }

    public static void main(String[] args) {
        int[] result = findRemainderAndQuotient(23, 5);
        System.out.println("Quotient: " + result[0] + ", Remainder: " + result[1]);
    }
}

// Program 9: Chocolate Distribution
public class ChocolateDistributor {
    public static int[] distributeChocolates(int numberOfChocolates, int numberOfChildren) {
        int perChild = numberOfChocolates / numberOfChildren;
        int remainder = numberOfChocolates % numberOfChildren;
        return new int[]{perChild, remainder};
    }

    public static void main(String[] args) {
        int[] result = distributeChocolates(47, 5);
        System.out.println("Each child gets: " + result[0] + ", Remaining chocolates: " + result[1]);
    }
}

// Program 10: Wind Chill Temperature
public class WindChillCalculator {
    public static double calculateWindChill(double temperature, double windSpeed) {
        return 35.74 + 0.6215 * temperature + (0.4275 * temperature - 35.75) * Math.pow(windSpeed, 0.16);
    }

    public static void main(String[] args) {
        double windChill = calculateWindChill(10, 15);
        System.out.println("Wind Chill Temperature: " + windChill);
    }
}

// Program 11: Trigonometric Calculator
public class TrigonometricCalculator {
    public static double[] calculateTrigonometricFunctions(double angleInDegrees) {
        double angleInRadians = Math.toRadians(angleInDegrees);
        double sinValue = Math.sin(angleInRadians);
        double cosValue = Math.cos(angleInRadians);
        double tanValue = Math.tan(angleInRadians);
        return new double[]{sinValue, cosValue, tanValue};
    }

    public static void main(String[] args) {
        double[] trigValues = calculateTrigonometricFunctions(45);
        System.out.println("Sine: " + trigValues[0]);
        System.out.println("Cosine: " + trigValues[1]);
        System.out.println("Tangent: " + trigValues[2]);
    }
}

//1. Simple Interest Calculator

public class SimpleInterestCalculator {
    public static void main(String[] args) {
        double principal = 5000;
        double rate = 6.5;
        int time = 3;

        double interest = (principal * rate * time) / 100;
        System.out.println("Simple Interest: " + interest);
    }
}
//2. Maximum Handshakes

public class MaximumHandshakes {
    public static void main(String[] args) {
        int people = 10;
        int handshakes = people * (people - 1) / 2;
        System.out.println("Maximum Handshakes: " + handshakes);
    }
}
//3. Triangular Park Rounds

public class TriangularParkRounds {
    public static void main(String[] args) {
        double sideA = 30.0;
        double sideB = 40.0;
        double sideC = 50.0;
        double perimeter = sideA + sideB + sideC;
        double rounds = 500 / perimeter;
        System.out.println("Number of Rounds: " + (int) rounds);
    }
}
//4. Positive/Negative/Zero Checker

public class NumberTypeChecker {
    public static void main(String[] args) {
        int number = -15;
        if (number > 0) System.out.println("Positive");
        else if (number < 0) System.out.println("Negative");
        else System.out.println("Zero");
    }
}
//5. Spring Season Detector

public class SpringSeasonChecker {
    public static void main(String[] args) {
        int month = 4, day = 15;
        boolean isSpring = (month == 3 && day >= 20) || (month == 6 && day <= 20) ||
                           (month > 3 && month < 6);
        System.out.println(isSpring ? "Spring Season" : "Not Spring");
    }
}
//6. Sum of Natural Numbers

public class SumOfNaturalNumbers {
    public static void main(String[] args) {
        int n = 10, sum = 0;
        for (int i = 1; i <= n; i++) sum += i;
        System.out.println("Sum: " + sum);
    }
}
//7. Smallest & Largest of 3 Numbers

public class SmallestLargest {
    public static void main(String[] args) {
        int a = 45, b = 12, c = 78;
        int smallest = Math.min(a, Math.min(b, c));
        int largest = Math.max(a, Math.max(b, c));
        System.out.println("Smallest: " + smallest);
        System.out.println("Largest: " + largest);
    }
}
//8. Quotient & Remainder

public class QuotientRemainder {
    public static void main(String[] args) {
        int dividend = 25, divisor = 4;
        int quotient = dividend / divisor;
        int remainder = dividend % divisor;
        System.out.println("Quotient: " + quotient);
        System.out.println("Remainder: " + remainder);
    }
}
//9. Chocolate Distribution
public class ChocolateDistribution {
    public static void main(String[] args) {
        int chocolates = 38, children = 5;
        int eachChildGets = chocolates / children;
        int remaining = chocolates % children;
        System.out.println("Each Child Gets: " + eachChildGets);
        System.out.println("Remaining Chocolates: " + remaining);
    }
}
//10. Wind Chill Calculator

public class WindChillCalculator {
    public static void main(String[] args) {
        double t = 5.0; // temperature
        double v = 20.0; // wind speed

        double windChill = 35.74 + 0.6215 * t - 35.75 * Math.pow(v, 0.16)
                           + 0.4275 * t * Math.pow(v, 0.16);
        System.out.println("Wind Chill: " + windChill);
    }
}
//11. Trigonometric Calculator

public class TrigonometricCalculator {
    public static void main(String[] args) {
        double degrees = 30.0;
        double radians = Math.toRadians(degrees);

        System.out.println("Sin: " + Math.sin(radians));
        System.out.println("Cos: " + Math.cos(radians));
        System.out.println("Tan: " + Math.tan(radians));
    }
}
