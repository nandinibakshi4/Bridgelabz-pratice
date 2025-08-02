//STRING NOTES01
// Program 1: Sum of digits of a 4-digit number using array
// Problem Statement: Generate a random 4-digit number and find the sum of its digits using arrays.
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


// Program 2: Shortest, Tallest and Mean height in a football team
// Problem Statement: Input heights of 11 players, calculate and display the shortest, tallest and mean height.
class FootballTeamStats {
    public static void main(String[] args) {
        double[] heights = {165.0, 172.5, 178.2, 181.0, 176.5, 169.3, 182.1, 175.4, 180.0, 174.7, 179.5};
        double min = heights[0], max = heights[0], sum = 0.0;

        for (double h : heights) {
            if (h < min) min = h;
            if (h > max) max = h;
            sum += h;
        }

        double mean = sum / heights.length;

        System.out.println("Shortest height: " + min);
        System.out.println("Tallest height: " + max);
        System.out.println("Mean height: " + mean);
    }
}


// Program 3: NumberChecker Utility Class
// Problem Statement: Create a class that contains methods to check whether a number is Duck, Armstrong, Largest, or Smallest Digit
class NumberChecker {
    public static boolean isDuckNumber(int number) {
        return String.valueOf(number).contains("0");
    }

    public static boolean isArmstrong(int number) {
        int sum = 0, temp = number, digits = String.valueOf(number).length();
        while (temp > 0) {
            int digit = temp % 10;
            sum += Math.pow(digit, digits);
            temp /= 10;
        }
        return sum == number;
    }

    public static int findLargestDigit(int number) {
        int max = 0;
        while (number > 0) {
            max = Math.max(max, number % 10);
            number /= 10;
        }
        return max;
    }

    public static int findSmallestDigit(int number) {
        int min = 9;
        while (number > 0) {
            min = Math.min(min, number % 10);
            number /= 10;
        }
        return min;
    }

    public static void main(String[] args) {
        int number = 370;
        System.out.println("Duck Number: " + isDuckNumber(number));
        System.out.println("Armstrong Number: " + isArmstrong(number));
        System.out.println("Largest Digit: " + findLargestDigit(number));
        System.out.println("Smallest Digit: " + findSmallestDigit(number));
    }
}


// Program 4: Harshad Number and Frequency Analysis
// Problem Statement: Check if a number is Harshad (divisible by sum of digits), and display digit frequency.
class HarshadAndFrequency {
    public static boolean isHarshad(int number) {
        int sum = 0, temp = number;
        while (temp > 0) {
            sum += temp % 10;
            temp /= 10;
        }
        return number % sum == 0;
    }

    public static void printDigitFrequency(int number) {
        int[] freq = new int[10];
        while (number > 0) {
            freq[number % 10]++;
            number /= 10;
        }
        for (int i = 0; i < freq.length; i++) {
            if (freq[i] > 0) System.out.println(i + ": " + freq[i]);
        }
    }

    public static void main(String[] args) {
        int number = 156;
        System.out.println("Harshad Number: " + isHarshad(number));
        System.out.println("Digit Frequency:");
        printDigitFrequency(number);
    }
}


// Program 5: Palindrome and Array Comparison
// Problem Statement: Check if a number is a Palindrome. Also check if an array is equal to its reverse.
class PalindromeAndReverseCheck {
    public static boolean isPalindrome(int number) {
        int original = number, reverse = 0;
        while (number > 0) {
            reverse = reverse * 10 + number % 10;
            number /= 10;
        }
        return original == reverse;
    }

    public static boolean isArrayPalindrome(int[] array) {
        for (int i = 0; i < array.length / 2; i++) {
            if (array[i] != array[array.length - 1 - i]) return false;
        }
        return true;
    }

    public static void main(String[] args) {
        int number = 121;
        int[] array = {1, 2, 3, 2, 1};

        System.out.println("Is Palindrome Number: " + isPalindrome(number));
        System.out.println("Is Array Palindrome: " + isArrayPalindrome(array));
    }
}

Program 6: Count Character Occurrences in a String
Concept: charAt() method and arrays
Problem Statement: Take a string and a character as input. Find all the indices where the character occurs in the string.

import java.util.Scanner;
class StringAnalyzer {
  public static int[] findAllIndexes(String text, char ch) {
    int count = 0;
    for (int i = 0; i < text.length(); i++) {
      if (text.charAt(i) == ch) count++;
    }
    int[] indexes = new int[count];
    int j = 0;
    for (int i = 0; i < text.length(); i++) {
      if (text.charAt(i) == ch) indexes[j++] = i;
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
    for (int i : indexes) System.out.print(i + " ");
  }
}
Program 7: Trim, Concat, and Convert String Case
Concept: Built-in String methods trim(), concat(), toUpperCase(), toLowerCase()
Problem Statement: Take two strings, trim whitespace, join them, and convert to upper/lower case.


import java.util.Scanner;
class StringProcessor {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter first string: ");
    String str1 = sc.nextLine().trim();
    System.out.print("Enter second string: ");
    String str2 = sc.nextLine().trim();

    String combined = str1.concat(" " + str2);
    System.out.println("Combined: " + combined);
    System.out.println("Uppercase: " + combined.toUpperCase());
    System.out.println("Lowercase: " + combined.toLowerCase());
  }
}
Program 8: Substring Extraction
Concept: substring(beginIndex, endIndex)
Problem Statement: Extract a part of a string using the substring method.

class SubstringExample {
  public static void main(String[] args) {
    String quote = "Java Programming Language";
    String sub = quote.substring(5, 16);  // extracts "Programming"
    System.out.println("Substring: " + sub);
  }
}
Program 9: Convert String to Character Array
Concept: toCharArray()
Problem Statement: Convert a string to a character array and print each character.

class CharArrayExample {
  public static void main(String[] args) {
    String name = "OpenAI";
    char[] chars = name.toCharArray();
    for (char c : chars) System.out.println(c);
  }
}
Program 10: String Equality Check
Concept: equals() method
Problem Statement: Take two strings and check if they are equal.

import java.util.Scanner;
class EqualityCheck {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter first string: ");
    String a = sc.nextLine();
    System.out.print("Enter second string: ");
    String b = sc.nextLine();

    if (a.equals(b)) System.out.println("Strings are equal");
    else System.out.println("Strings are not equal");
  }
}
Program 11: ASCII Value of Characters
Concept: ASCII character code
Problem Statement: Print characters of a string with their ASCII values.

class ASCIIPrinter {
  public static void main(String[] args) {
    String input = "AaBb";
    for (int i = 0; i < input.length(); i++) {
      char ch = input.charAt(i);
      System.out.println(ch + " - " + (int) ch);
    }
  }
}
Program 12: Handle Runtime Exception
Concept: Exception handling using try-catch
Problem Statement: Handle divide-by-zero exception.

class RuntimeErrorHandling {
  public static void main(String[] args) {
    try {
      int result = 10 / 0;
    } catch (ArithmeticException e) {
      System.out.println("ArithmeticException => " + e.getMessage());
    } catch (Exception e) {
      System.out.println("Generic Exception => " + e.getMessage());
    }
  }
}
Program 13: File Not Found Exception
Concept: Checked exception handling (FileNotFoundException)
Problem Statement: Read from a file and handle exception if it does not exist.

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

class FileExceptionExample {
  public static void main(String[] args) {
    try {
      File file = new File("data.txt");
      Scanner sc = new Scanner(file);
    } catch (FileNotFoundException e) {
      System.out.println("FileNotFoundException occurred");
    } catch (Exception e) {
      System.out.println("Other Exception occurred");
    }
  }
}

