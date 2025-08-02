//STRING LEVEL3

// PROGRAM 1: Find All Occurrences of a Character in a String using charAt()
// ------------------------------------------------------------------------------------
// Problem: Take user input for the String and Character to find
// Find all indexes where the character occurs using charAt()
import java.util.Scanner;

class StringAnalyzer {
  public static int[] findAllIndexes(String text, char ch) {
    int count = 0;
    for (int i = 0; i < text.length(); i++) {
      if (text.charAt(i) == ch) {
        count++;
      }
    }
    int[] indexes = new int[count];
    int j = 0;
    for (int i = 0; i < text.length(); i++) {
      if (text.charAt(i) == ch) {
        indexes[j++] = i;
      }
    }
    return indexes;
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter a text: ");
    String text = sc.nextLine();
    System.out.print("Enter a character to find the occurrences: ");
    char ch = sc.next().charAt(0);

    int[] indexes = findAllIndexes(text, ch);
    System.out.println("Indexes of the character '" + ch + "': ");
    for (int index : indexes) {
      System.out.print(index + " ");
    }
    sc.close();
  }
}


// PROGRAM 2: BMI Calculator for 10 People
// --------------------------------------------
import java.util.*;

class BMICalculator {
  public static String[][] calculateBMI(double[][] data) {
    String[][] result = new String[10][4];
    for (int i = 0; i < 10; i++) {
      double weight = data[i][0];
      double heightCm = data[i][1];
      double heightM = heightCm / 100.0;
      double bmi = weight / (heightM * heightM);
      String status = getStatus(bmi);
      result[i][0] = String.format("%.2f", heightCm);
      result[i][1] = String.format("%.2f", weight);
      result[i][2] = String.format("%.2f", bmi);
      result[i][3] = status;
    }
    return result;
  }

  public static String getStatus(double bmi) {
    if (bmi < 18.5) return "Underweight";
    else if (bmi < 25) return "Normal";
    else if (bmi < 30) return "Overweight";
    else return "Obese";
  }

  public static void displayBMI(String[][] result) {
    System.out.printf("%-10s %-10s %-10s %-15s\n", "Height(cm)", "Weight(kg)", "BMI", "Status");
    for (String[] row : result) {
      System.out.printf("%-10s %-10s %-10s %-15s\n", row[0], row[1], row[2], row[3]);
    }
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    double[][] hwData = new double[10][2];
    for (int i = 0; i < 10; i++) {
      System.out.println("Enter weight (kg) and height (cm) for person " + (i + 1) + ":");
      hwData[i][0] = sc.nextDouble();
      hwData[i][1] = sc.nextDouble();
    }
    String[][] result = calculateBMI(hwData);
    displayBMI(result);
    sc.close();
  }
}


// PROGRAM 3: Find Unique Characters in a String using charAt()
// --------------------------------------------------------------
import java.util.Scanner;

class UniqueCharacters {
  public static int getLength(String text) {
    int length = 0;
    try {
      while (true) {
        text.charAt(length);
        length++;
      }
    } catch (Exception e) {
      return length;
    }
  }

  public static char[] findUniqueCharacters(String text) {
    int len = getLength(text);
    char[] unique = new char[len];
    int count = 0;

    for (int i = 0; i < len; i++) {
      char c = text.charAt(i);
      boolean found = false;
      for (int j = 0; j < i; j++) {
        if (text.charAt(j) == c) {
          found = true;
          break;
        }
      }
      if (!found) {
        unique[count++] = c;
      }
    }
    char[] result = new char[count];
    System.arraycopy(unique, 0, result, 0, count);
    return result;
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter a text: ");
    String input = sc.nextLine();
    char[] uniqueChars = findUniqueCharacters(input);
    System.out.print("Unique characters: ");
    for (char c : uniqueChars) {
      System.out.print(c + " ");
    }
    sc.close();
  }
}
// Program 1: Sum of all digits of a 4-digit number using an array
// Statement: Generate a 4-digit random number using Math.random(), store digits in an array, and find the sum.
import java.util.*;
class SumOfDigits {
    static int calculateDigitSum(int number) {
        int[] digits = new int[4];
        int sum = 0;
        for (int i = 3; i >= 0; i--) {
            digits[i] = number % 10;
            number /= 10;
        }
        for (int digit : digits) sum += digit;
        return sum;
    }

    public static void main(String[] args) {
        int number = (int)(Math.random() * 9000) + 1000;
        System.out.println("Generated number: " + number);
        System.out.println("Sum of digits: " + calculateDigitSum(number));
    }
}

// Program 2: Display shortest, tallest and average of heights
// Statement: Read 5 height values into an array, display the shortest, tallest, and average height.
class HeightAnalysis {
    static void analyzeHeights(float[] heights) {
        float min = heights[0], max = heights[0], sum = 0;
        for (float h : heights) {
            if (h < min) min = h;
            if (h > max) max = h;
            sum += h;
        }
        System.out.println("Shortest Height: " + min);
        System.out.println("Tallest Height: " + max);
        System.out.println("Average Height: " + (sum / heights.length));
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        float[] heights = new float[5];
        System.out.println("Enter 5 height values in cm:");
        for (int i = 0; i < 5; i++) heights[i] = sc.nextFloat();
        analyzeHeights(heights);
    }
}

// Program 3: Check Duck, Armstrong, Largest and Smallest Digit
// Statement: Read a number and check if it's Duck, Armstrong, and find the largest & smallest digit.
class NumberProperties {
    static boolean isDuck(int n) {
        String s = String.valueOf(n);
        return s.indexOf('0') > 0;
    }

    static boolean isArmstrong(int n) {
        int temp = n, sum = 0;
        int digits = String.valueOf(n).length();
        while (n > 0) {
            int d = n % 10;
            sum += Math.pow(d, digits);
            n /= 10;
        }
        return temp == sum;
    }

    static void findLargestAndSmallestDigit(int n) {
        int largest = 0, smallest = 9;
        while (n > 0) {
            int d = n % 10;
            if (d > largest) largest = d;
            if (d < smallest) smallest = d;
            n /= 10;
        }
        System.out.println("Largest Digit: " + largest);
        System.out.println("Smallest Digit: " + smallest);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int num = sc.nextInt();
        System.out.println("Duck Number: " + isDuck(num));
        System.out.println("Armstrong Number: " + isArmstrong(num));
        findLargestAndSmallestDigit(num);
    }
}

// Program 4: First Non-Repeating Character
// Statement: Accept a string and find the first non-repeating character.
class FirstNonRepeatingChar {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String s = sc.nextLine();
        for (char c : s.toCharArray()) {
            if (s.indexOf(c) == s.lastIndexOf(c)) {
                System.out.println("First non-repeating character: " + c);
                return;
            }
        }
        System.out.println("No non-repeating character found.");
    }
}

// Program 5: Frequency Count of Characters
// Statement: Count frequency of each character in a string.
class CharFrequency {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String s = sc.nextLine();
        int[] freq = new int[256];
        for (char c : s.toCharArray()) freq[c]++;
        for (int i = 0; i < freq.length; i++) {
            if (freq[i] > 0) System.out.println((char)i + ": " + freq[i]);
        }
    }
}

// Program 6: Check Palindrome
// Statement: Accept a string and check whether it is a palindrome.
class PalindromeCheck {
    static boolean isPalindrome(String s) {
        return s.equalsIgnoreCase(new StringBuilder(s).reverse().toString());
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String s = sc.nextLine();
        System.out.println("Palindrome: " + isPalindrome(s));
    }
}

// Program 7: Check Anagram
// Statement: Accept two strings and check whether they are anagrams.
class AnagramCheck {
    static boolean isAnagram(String s1, String s2) {
        char[] a = s1.toLowerCase().toCharArray();
        char[] b = s2.toLowerCase().toCharArray();
        Arrays.sort(a);
        Arrays.sort(b);
        return Arrays.equals(a, b);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter first string: ");
        String s1 = sc.nextLine();
        System.out.print("Enter second string: ");
        String s2 = sc.nextLine();
        System.out.println("Anagram: " + isAnagram(s1, s2));
    }
}

// Program 8: Print Calendar of a Month
// Statement: Accept month and year and print calendar.
class PrintCalendar {
    static void printMonth(int month, int year) {
        String[] months = {"", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
        int[] days = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
            days[2] = 29;

        Calendar cal = new GregorianCalendar(year, month - 1, 1);
        int startDay = cal.get(Calendar.DAY_OF_WEEK);

        System.out.println("\n  " + months[month] + " " + year);
        System.out.println("Su Mo Tu We Th Fr Sa");

        for (int i = 1; i < startDay; i++) System.out.print("   ");

        for (int i = 1; i <= days[month]; i++) {
            System.out.printf("%2d ", i);
            if ((i + startDay - 1) % 7 == 0) System.out.println();
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter month (1-12): ");
        int month = sc.nextInt();
        System.out.print("Enter year: ");
        int year = sc.nextInt();
        printMonth(month, year);
    }
}

// Program 9: Generate Deck of Cards
// Statement: Display a full deck of 52 cards with suits and ranks.
class DeckOfCards {
    public static void main(String[] args) {
        String[] suits = {"Hearts", "Diamonds", "Clubs", "Spades"};
        String[] ranks = {"2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"};
        for (String suit : suits) {
            for (String rank : ranks) {
                System.out.println(rank + " of " + suit);
            }
        }
    }
}

// Program 10: Matrix Addition
// Statement: Add two 3x3 matrices and display the result.
class MatrixAddition {
    public static void main(String[] args) {
        int[][] a = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
        int[][] b = {{9, 8, 7}, {6, 5, 4}, {3, 2, 1}};
        int[][] c = new int[3][3];

        System.out.println("Sum of matrices:");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                c[i][j] = a[i][j] + b[i][j];
                System.out.print(c[i][j] + " ");
            }
            System.out.println();
        }
    }
}
