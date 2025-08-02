//level3 methods

// Program 1: Sum of Digits of a 4-digit number using Array
// Statement: Create a program to find the sum of all the digits of a number using an array. Use Math.random() to generate a 4-digit random number.
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

    public int sumArray(int[] array) {
        int sum = 0;
        for (int val : array) sum += val;
        return sum;
    }

    public static void main(String[] args) {
        SumOfDigits s = new SumOfDigits();
        int number = s.get4DigitRandomNumber();
        System.out.println("Random Number: " + number);

        int count = s.countDigits(number);
        int[] digits = s.getDigits(number, count);
        int sum = s.sumArray(digits);

        System.out.println("Sum of Digits: " + sum);
    }
}

// Program 2: Football Team Heights
// Statement: Create a program to input 11 player's heights. Find shortest, tallest, and mean height.
class TeamHeights {
    public static void main(String[] args) {
        int[] heights = new int[11];
        int min = Integer.MAX_VALUE, max = Integer.MIN_VALUE, sum = 0;

        for (int i = 0; i < 11; i++) {
            heights[i] = (int)(Math.random() * 51 + 150); // heights between 150-200 cm
            sum += heights[i];
            if (heights[i] < min) min = heights[i];
            if (heights[i] > max) max = heights[i];
        }

        System.out.println("Heights of Players:");
        for (int h : heights) System.out.print(h + " ");

        System.out.println("\nShortest Height: " + min);
        System.out.println("Tallest Height: " + max);
        System.out.println("Average Height: " + (sum / 11.0));
    }
}

// Program 3: NumberChecker Utility
// Statement: Create a NumberChecker class with methods for checking duck number, Armstrong number, largest and smallest digit of a number.
class NumberChecker {
    public boolean isDuckNumber(int number) {
        String s = String.valueOf(number);
        return s.substring(1).contains("0");
    }

    public boolean isArmstrong(int number) {
        int sum = 0, temp = number, digits = String.valueOf(number).length();
        while (temp > 0) {
            int digit = temp % 10;
            sum += Math.pow(digit, digits);
            temp /= 10;
        }
        return sum == number;
    }

    public int getLargestDigit(int number) {
        int max = 0;
        while (number > 0) {
            int digit = number % 10;
            if (digit > max) max = digit;
            number /= 10;
        }
        return max;
    }

    public int getSmallestDigit(int number) {
        int min = 9;
        while (number > 0) {
            int digit = number % 10;
            if (digit < min) min = digit;
            number /= 10;
        }
        return min;
    }

    public static void main(String[] args) {
        NumberChecker nc = new NumberChecker();
        int num = 370;
        System.out.println("Duck Number: " + nc.isDuckNumber(num));
        System.out.println("Armstrong Number: " + nc.isArmstrong(num));
        System.out.println("Largest Digit: " + nc.getLargestDigit(num));
        System.out.println("Smallest Digit: " + nc.getSmallestDigit(num));
    }
}

// Program 4: Harshad Number and Frequency of Digits
// Statement: Check if number is Harshad (divisible by sum of digits). Print frequency of each digit.
class HarshadFrequency {
    public static void main(String[] args) {
        int number = 156;
        int sum = 0, temp = number;
        int[] freq = new int[10];

        while (temp > 0) {
            int digit = temp % 10;
            sum += digit;
            freq[digit]++;
            temp /= 10;
        }

        System.out.println("Is Harshad Number: " + (number % sum == 0));
        System.out.println("Digit Frequencies:");
        for (int i = 0; i < 10; i++) {
            if (freq[i] > 0)
                System.out.println(i + ": " + freq[i]);
        }
    }
}

// Program 5: Palindrome and Array Equality
// Statement: Check if a number is a palindrome. Also compare two arrays.
class PalindromeArray {
    public boolean isPalindrome(int number) {
        int rev = 0, temp = number;
        while (temp > 0) {
            rev = rev * 10 + temp % 10;
            temp /= 10;
        }
        return rev == number;
    }

    public boolean arraysEqual(int[] a, int[] b) {
        if (a.length != b.length) return false;
        for (int i = 0; i < a.length; i++) {
            if (a[i] != b[i]) return false;
        }
        return true;
    }

    public static void main(String[] args) {
        PalindromeArray pa = new PalindromeArray();
        System.out.println("Is Palindrome: " + pa.isPalindrome(121));
        System.out.println("Arrays Equal: " + pa.arraysEqual(new int[]{1, 2, 3}, new int[]{1, 2, 3}));
    }
}

// Program 6: Number Type Checker
// ---------------------------------------------------
// Check if number is Prime, Neon, Spy, Automorphic, Buzz

class NumberTypes {
    public static void main(String[] args) {
        int n = 7;
        System.out.println("Prime: " + isPrime(n));
        System.out.println("Neon: " + isNeon(n));
        System.out.println("Spy: " + isSpy(n));
        System.out.println("Automorphic: " + isAutomorphic(n));
        System.out.println("Buzz: " + isBuzz(n));
    }

    static boolean isPrime(int n) {
        if (n <= 1) return false;
        for (int i = 2; i <= Math.sqrt(n); i++)
            if (n % i == 0) return false;
        return true;
    }

    static boolean isNeon(int n) {
        int sq = n * n, sum = 0;
        while (sq > 0) {
            sum += sq % 10;
            sq /= 10;
        }
        return sum == n;
    }

    static boolean isSpy(int n) {
        int sum = 0, prod = 1;
        while (n > 0) {
            int d = n % 10;
            sum += d;
            prod *= d;
            n /= 10;
        }
        return sum == prod;
    }

    static boolean isAutomorphic(int n) {
        int sq = n * n;
        return ("" + sq).endsWith("" + n);
    }

    static boolean isBuzz(int n) {
        return n % 7 == 0 || n % 10 == 7;
    }
}

// ---------------------------------------------------
// Program 7: Factor Types Checker
// ---------------------------------------------------
// Check number is Perfect, Abundant, Deficient, Strong

class FactorTypes {
    public static void main(String[] args) {
        int n = 28;
        int sum = 0;
        for (int i = 1; i < n; i++)
            if (n % i == 0) sum += i;

        System.out.println("Perfect: " + (sum == n));
        System.out.println("Abundant: " + (sum > n));
        System.out.println("Deficient: " + (sum < n));

        // Strong Number
        n = 145;
        int temp = n, factSum = 0;
        while (temp > 0) {
            int d = temp % 10;
            factSum += factorial(d);
            temp /= 10;
        }
        System.out.println("Strong: " + (factSum == n));
    }

    static int factorial(int n) {
        int f = 1;
        for (int i = 2; i <= n; i++) f *= i;
        return f;
    }
}

// ---------------------------------------------------
// Program 8: Unique 6-digit OTP Generator
// ---------------------------------------------------

class UniqueOTP {
    public static void main(String[] args) {
        Set<Integer> digits = new HashSet<>();
        Random rand = new Random();
        while (digits.size() < 6) digits.add(rand.nextInt(10));
        System.out.print("Unique OTP: ");
        for (int d : digits) System.out.print(d);
        System.out.println();
    }
}

// ---------------------------------------------------
// Program 9: Calendar Generator
// ---------------------------------------------------

class CalendarGenerator {
    public static void main(String[] args) {
        int month = 8, year = 2025;
        YearMonth ym = YearMonth.of(year, month);
        System.out.println(ym.getMonth() + " " + year);
        for (int i = 1; i <= ym.lengthOfMonth(); i++)
            System.out.println(i + " " + ym.getMonth());
    }
}

// ---------------------------------------------------
// Program 10: Distance and Line Equation
// ---------------------------------------------------

class DistanceLine {
    public static void main(String[] args) {
        int x1 = 1, y1 = 2, x2 = 4, y2 = 6;
        double dist = Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
        double m = (double)(y2 - y1) / (x2 - x1);
        double c = y1 - m * x1;
        System.out.printf("Distance: %.2f\n", dist);
        System.out.printf("Line Equation: y = %.2fx + %.2f\n", m, c);
    }
}

// ---------------------------------------------------
// Program 11: Collinearity Check
// ---------------------------------------------------

class CollinearityCheck {
    public static void main(String[] args) {
        int x1 = 1, y1 = 1, x2 = 2, y2 = 2, x3 = 3, y3 = 3;
        int area = x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2);
        System.out.println("Collinear: " + (area == 0));
    }
}

// ---------------------------------------------------
// Program 12: Bonus for 10 Employees
// ---------------------------------------------------

class EmployeeBonus {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double[] salaries = new double[10];
        for (int i = 0; i < 10; i++) {
            System.out.print("Enter salary of employee " + (i + 1) + ": ");
            salaries[i] = sc.nextDouble();
        }
        for (int i = 0; i < 10; i++) {
            double bonus = salaries[i] * 0.1;
            System.out.println("Employee " + (i + 1) + " gets bonus: Rs. " + bonus);
        }
    }
}

// ---------------------------------------------------
// Program 13: PCM Marks Scorecard
// ---------------------------------------------------

class Scorecard {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String[] names = new String[3];
        int[][] marks = new int[3][3];
        for (int i = 0; i < 3; i++) {
            System.out.print("Enter name of student " + (i + 1) + ": ");
            names[i] = sc.next();
            System.out.print("Enter PCM marks: ");
            for (int j = 0; j < 3; j++) marks[i][j] = sc.nextInt();
        }
        for (int i = 0; i < 3; i++) {
            int total = marks[i][0] + marks[i][1] + marks[i][2];
            double avg = total / 3.0;
            System.out.println("Name: " + names[i] + ", Total: " + total + ", Avg: " + avg);
        }
    }
}

