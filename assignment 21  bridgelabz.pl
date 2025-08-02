//STRING LEVEL2

// Program 1: Find all the occurrences of a character in a string using charAt()
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
  }
}

// Program 2: Find the length of a string without using length() method
class StringLength {
  public static int getStringLength(String str) {
    int count = 0;
    try {
      while (true) {
        str.charAt(count);
        count++;
      }
    } catch (Exception e) {
      return count;
    }
  }
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter a string: ");
    String input = sc.next();
    System.out.println("Length without using length(): " + getStringLength(input));
    System.out.println("Length using length(): " + input.length());
  }
}

// Program 3: Split the text into words without using split()
class StringSplitter {
  public static String[] splitWords(String text) {
    int spaceCount = 0;
    for (int i = 0; i < text.length(); i++) {
      if (text.charAt(i) == ' ') spaceCount++;
    }
    String[] words = new String[spaceCount + 1];
    int wordIndex = 0, start = 0;
    for (int i = 0; i <= text.length(); i++) {
      if (i == text.length() || text.charAt(i) == ' ') {
        words[wordIndex++] = text.substring(start, i);
        start = i + 1;
      }
    }
    return words;
  }
  public static boolean compareArrays(String[] a, String[] b) {
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (!a[i].equals(b[i])) return false;
    }
    return true;
  }
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter a text: ");
    String text = sc.nextLine();
    String[] userDefined = splitWords(text);
    String[] builtIn = text.split(" ");
    System.out.println("Match with built-in split(): " + compareArrays(userDefined, builtIn));
  }
}

// Program 4: Split the text into words and get lengths in 2D array
class WordLengthMapper {
  public static String[][] getWordWithLength(String[] words) {
    String[][] result = new String[words.length][2];
    for (int i = 0; i < words.length; i++) {
      result[i][0] = words[i];
      result[i][1] = String.valueOf(words[i].length());
    }
    return result;
  }
  public static void display(String[][] data) {
    System.out.println("Word\tLength");
    for (String[] row : data) {
      System.out.println(row[0] + "\t" + row[1]);
    }
  }
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter a sentence: ");
    String sentence = sc.nextLine();
    String[] words = sentence.split(" ");
    String[][] wordLengths = getWordWithLength(words);
    display(wordLengths);
  }
}

// Program 5: Vowel and consonant count in a string
class VowelConsonantCounter {
  public static boolean isVowel(char c) {
    return "aeiouAEIOU".indexOf(c) != -1;
  }
  public static int[] countVowelsConsonants(String str) {
    int vowels = 0, consonants = 0;
    for (int i = 0; i < str.length(); i++) {
      char ch = str.charAt(i);
      if (Character.isLetter(ch)) {
        if (isVowel(ch)) vowels++;
        else consonants++;
      }
    }
    return new int[] { vowels, consonants };
  }
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter a string: ");
    String input = sc.nextLine();
    int[] result = countVowelsConsonants(input);
    System.out.println("Vowels: " + result[0]);
    System.out.println("Consonants: " + result[1]);
  }
}

// Program 6: Vowel and consonant classification in a string
class VowelConsonantClassifier {
  public static String classifyChar(char ch) {
    if (!Character.isLetter(ch)) return "Not a Letter";
    ch = Character.toLowerCase(ch);
    return ("aeiou".indexOf(ch) != -1) ? "Vowel" : "Consonant";
  }
  public static String[][] analyzeString(String str) {
    String[][] result = new String[str.length()][2];
    for (int i = 0; i < str.length(); i++) {
      result[i][0] = String.valueOf(str.charAt(i));
      result[i][1] = classifyChar(str.charAt(i));
    }
    return result;
  }
  public static void display(String[][] result) {
    System.out.println("Char\tType");
    for (String[] row : result) {
      System.out.println(row[0] + "\t" + row[1]);
    }
  }
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter a string: ");
    String input = sc.nextLine();
    display(analyzeString(input));
  }
}

// Program 7: Trim leading and trailing spaces using charAt()
class TrimSpaces {
  public static int[] findTrimIndices(String str) {
    int start = 0, end = str.length() - 1;
    while (start <= end && str.charAt(start) == ' ') start++;
    while (end >= start && str.charAt(end) == ' ') end--;
    return new int[] { start, end };
  }
  public static String substringManual(String str, int start, int end) {
    StringBuilder sb = new StringBuilder();
    for (int i = start; i <= end; i++) {
      sb.append(str.charAt(i));
    }
    return sb.toString();
  }
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter a text with spaces: ");
    String input = sc.nextLine();
    int[] indices = findTrimIndices(input);
    String trimmed = substringManual(input, indices[0], indices[1]);
    System.out.println("Manually Trimmed: " + trimmed);
    System.out.println("Built-in Trimmed: " + input.trim());
  }
}

Program 1: Sum of all digits of a 4-digit random number
*/
public class Program1 {
    public static void main(String[] args) {
        int number = (int)(Math.random() * 9000) + 1000; // 4-digit random number
        int sum = findDigitSum(number);
        System.out.println("The number is: " + number);
        System.out.println("Sum of digits: " + sum);
    }

    static int findDigitSum(int number) {
        int sum = 0;
        while (number > 0) {
            sum += number % 10;
            number /= 10;
        }
        return sum;
    }
}

/*
Program 2: Shortest, tallest, and mean height of 10 students
*/
public class Program2 {
    public static void main(String[] args) {
        int[] heights = {165, 172, 158, 180, 175, 162, 170, 168, 177, 169};
        int shortest = heights[0];
        int tallest = heights[0];
        int sum = 0;

        for (int height : heights) {
            if (height < shortest) shortest = height;
            if (height > tallest) tallest = height;
            sum += height;
        }

        double mean = (double) sum / heights.length;
        System.out.println("Shortest Height: " + shortest);
        System.out.println("Tallest Height: " + tallest);
        System.out.println("Mean Height: " + mean);
    }
}

/*
Program 3: Duck Number, Armstrong Number, Largest and Smallest Digit
*/
public class Program3 {
    public static void main(String[] args) {
        int number = 370; // Example input

        System.out.println("Duck Number: " + isDuckNumber(number));
        System.out.println("Armstrong Number: " + isArmstrong(number));
        System.out.println("Largest Digit: " + getLargestDigit(number));
        System.out.println("Smallest Digit: " + getSmallestDigit(number));
    }

    static boolean isDuckNumber(int number) {
        String numStr = String.valueOf(number);
        return numStr.contains("0") && numStr.charAt(0) != '0';
    }

    static boolean isArmstrong(int number) {
        int sum = 0, temp = number;
        int digits = String.valueOf(number).length();
        while (temp > 0) {
            int digit = temp % 10;
            sum += Math.pow(digit, digits);
            temp /= 10;
        }
        return sum == number;
    }

    static int getLargestDigit(int number) {
        int max = 0;
        while (number > 0) {
            int digit = number % 10;
            if (digit > max) max = digit;
            number /= 10;
        }
        return max;
    }

    static int getSmallestDigit(int number) {
        int min = 9;
        while (number > 0) {
            int digit = number % 10;
            if (digit < min) min = digit;
            number /= 10;
        }
        return min;
    }
}

/*
Program 4: Harshad Number and Digit Frequency
*/
public class Program4 {
    public static void main(String[] args) {
        int number = 156; // Example

        System.out.println("Harshad Number: " + isHarshad(number));
        printDigitFrequency(number);
    }

    static boolean isHarshad(int number) {
        int sum = 0, temp = number;
        while (temp > 0) {
            sum += temp % 10;
            temp /= 10;
        }
        return number % sum == 0;
    }

    static void printDigitFrequency(int number) {
        int[] freq = new int[10];
        while (number > 0) {
            freq[number % 10]++;
            number /= 10;
        }
        System.out.println("Digit Frequencies:");
        for (int i = 0; i < freq.length; i++) {
            if (freq[i] > 0) {
                System.out.println(i + ": " + freq[i]);
            }
        }
    }
}

/*
Program 5: Palindrome check and Reversed Array Comparison
*/
public class Program5 {
    public static void main(String[] args) {
        int number = 121;
        int[] arr = {1, 2, 3, 4, 5};
        int[] reversed = {5, 4, 3, 2, 1};

        System.out.println("Is Palindrome: " + isPalindrome(number));
        System.out.println("Arrays are Reverse of Each Other: " + arraysReversed(arr, reversed));
    }

    static boolean isPalindrome(int number) {
        int reversed = 0, original = number;
        while (number > 0) {
            reversed = reversed * 10 + number % 10;
            number /= 10;
        }
        return reversed == original;
    }

    static boolean arraysReversed(int[] a, int[] b) {
        if (a.length != b.length) return false;
        int n = a.length;
        for (int i = 0; i < n; i++) {
            if (a[i] != b[n - 1 - i]) return false;
        }
        return true;
    }
}

/*
Program 6: Prime, Neon, Spy, Automorphic, Buzz Numbers
*/
public class Program6 {
    public static void main(String[] args) {
        int number = 7;

        System.out.println("Is Prime: " + isPrime(number));
        System.out.println("Is Neon: " + isNeon(number));
        System.out.println("Is Spy: " + isSpy(number));
        System.out.println("Is Automorphic: " + isAutomorphic(number));
        System.out.println("Is Buzz: " + isBuzz(number));
    }

    static boolean isPrime(int number) {
        if (number < 2) return false;
        for (int i = 2; i <= Math.sqrt(number); i++) {
            if (number % i == 0) return false;
        }
        return true;
    }

    static boolean isNeon(int number) {
        int square = number * number, sum = 0;
        while (square > 0) {
            sum += square % 10;
            square /= 10;
        }
        return sum == number;
    }

    static boolean isSpy(int number) {
        int sum = 0, product = 1;
        while (number > 0) {
            int digit = number % 10;
            sum += digit;
            product *= digit;
            number /= 10;
        }
        return sum == product;
    }

    static boolean isAutomorphic(int number) {
        int square = number * number;
        return String.valueOf(square).endsWith(String.valueOf(number));
    }

    static boolean isBuzz(int number) {
        return number % 7 == 0 || number % 10 == 7;
    }
}

/*
Program 7: Factors, Perfect, Abundant, Deficient, Strong Numbers
*/
public class Program7 {
    public static void main(String[] args) {
        int number = 145;
        System.out.println("Factors:");
        printFactors(number);

        System.out.println("Perfect Number: " + isPerfect(number));
        System.out.println("Abundant Number: " + isAbundant(number));
        System.out.println("Deficient Number: " + isDeficient(number));
        System.out.println("Strong Number: " + isStrong(number));
    }

    static void printFactors(int number) {
        for (int i = 1; i <= number; i++) {
            if (number % i == 0) System.out.print(i + " ");
        }
        System.out.println();
    }

    static boolean isPerfect(int number) {
        int sum = 0;
        for (int i = 1; i < number; i++) {
            if (number % i == 0) sum += i;
        }
        return sum == number;
    }

    static boolean isAbundant(int number) {
        int sum = 0;
        for (int i = 1; i < number; i++) {
            if (number % i == 0) sum += i;
        }
        return sum > number;
    }

    static boolean isDeficient(int number) {
        int sum = 0;
        for (int i = 1; i < number; i++) {
            if (number % i == 0) sum += i;
        }
        return sum < number;
    }

    static boolean isStrong(int number) {
        int sum = 0, temp = number;
        while (temp > 0) {
            int digit = temp % 10;
            sum += factorial(digit);
            temp /= 10;
        }
        return sum == number;
    }

    static int factorial(int n) {
        int fact = 1;
        for (int i = 1; i <= n; i++) fact *= i;
        return fact;
    }
}
