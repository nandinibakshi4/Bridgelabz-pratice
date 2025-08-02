//Strings - Handling strings and common string functions
//Functions - parameter passing, return

📘 **Program 1: Count Vowels and Consonants**
📝 Problem:
Write a Java program to count the number of vowels and consonants in a given string.

```java
public class VowelConsonantCounter {
    public static void main(String[] args) {
        String input = "Hello World";
        countVowelsAndConsonants(input);
    }

    public static void countVowelsAndConsonants(String input) {
        int vowels = 0, consonants = 0;
        String lower = input.toLowerCase();

        for (char ch : lower.toCharArray()) {
            if (Character.isLetter(ch)) {
                if ("aeiou".indexOf(ch) != -1) {
                    vowels++;
                } else {
                    consonants++;
                }
            }
        }

        System.out.println("Vowels: " + vowels);
        System.out.println("Consonants: " + consonants);
    }
}
```

📘 **Program 2: Reverse a String**
📝 Problem:
Write a Java program to reverse a given string without using any built-in reverse functions.

```java
public class ReverseString {
    public static void main(String[] args) {
        String input = "Hello";
        System.out.println("Reversed: " + reverseString(input));
    }

    public static String reverseString(String input) {
        String reversed = "";
        for (int i = input.length() - 1; i >= 0; i--) {
            reversed += input.charAt(i);
        }
        return reversed;
    }
}
```

📘 **Program 3: Palindrome String Check**
📝 Problem:
Write a Java program to check if a given string is a palindrome.

```java
public class PalindromeCheck {
    public static void main(String[] args) {
        String input = "madam";
        System.out.println("Is Palindrome? " + isPalindrome(input));
    }

    public static boolean isPalindrome(String input) {
        int s = 0, e = input.length() - 1;
        while (s < e) {
            if (input.charAt(s) != input.charAt(e)) {
                return false;
            }
            s++;
            e--;
        }
        return true;
    }
}
```

📘 **Program 4: Remove Duplicates from a String**
📝 Problem:
Write a Java program to remove all duplicate characters from a given string and return the modified string.

```java
public class RemoveDuplicates {
    public static void main(String[] args) {
        String input = "programming";
        System.out.println("Without duplicates: " + removeDuplicates(input));
    }

    public static String removeDuplicates(String input) {
        String result = "";
        for (char ch : input.toCharArray()) {
            if (result.indexOf(ch) == -1) {
                result += ch;
            }
        }
        return result;
    }
}
```

📘 **Program 5: Find the Longest Word in a Sentence**
📝 Problem:
Write a Java program that takes a sentence as input and returns the longest word.

```java
public class LongestWord {
    public static void main(String[] args) {
        String sentence = "Java programming is fun";
        System.out.println("Longest word: " + findLongestWord(sentence));
    }

    public static String findLongestWord(String sentence) {
        String[] words = sentence.split(" ");
        String longest = "";
        for (String word : words) {
            if (word.length() > longest.length()) {
                longest = word;
            }
        }
        return longest;
    }
}
```

📘 **Program 6: Find Substring Occurrences**
📝 Problem:
Write a Java program to count how many times a given substring occurs in a string.

```java
public class SubstringOccurrences {
    public static void main(String[] args) {
        String str = "abababa";
        String sub = "aba";
        System.out.println("Occurrences: " + countOccurrences(str, sub));
    }

    public static int countOccurrences(String str, String sub) {
        int count = 0;
        for (int i = 0; i <= str.length() - sub.length(); i++) {
            if (str.substring(i, i + sub.length()).equals(sub)) {
                count++;
            }
        }
        return count;
    }
}
```

📘 **Program 7: Toggle Case of Characters**
📝 Problem:
Write a Java program to toggle the case of each character in a string.

```java
public class ToggleCase {
    public static void main(String[] args) {
        String input = "Java123";
        System.out.println("Toggled: " + toggleCase(input));
    }

    public static String toggleCase(String input) {
        StringBuilder result = new StringBuilder();
        for (char ch : input.toCharArray()) {
            if (Character.isUpperCase(ch)) {
                result.append(Character.toLowerCase(ch));
            } else if (Character.isLowerCase(ch)) {
                result.append(Character.toUpperCase(ch));
            } else {
                result.append(ch);
            }
        }
        return result.toString();
    }
}
```

📘 **Program 8: Compare Two Strings**
📝 Problem:
Write a Java program to compare two strings lexicographically without using built-in compare methods.

```java
public class LexicographicCompare {
    public static void main(String[] args) {
        String s1 = "apple";
        String s2 = "banana";
        System.out.println(compareStrings(s1, s2));
    }

    public static String compareStrings(String s1, String s2) {
        int minLength = Math.min(s1.length(), s2.length());
        for (int i = 0; i < minLength; i++) {
            if (s1.charAt(i) != s2.charAt(i)) {
                return s1.charAt(i) < s2.charAt(i) ? s1 + " comes before " + s2 : s2 + " comes before " + s1;
            }
        }
        return s1.length() < s2.length() ? s1 + " comes before " + s2 : s2 + " comes before " + s1;
    }
}
```

📘 **Program 9: Find the Most Frequent Character**
📝 Problem:
Write a Java program to find the most frequent character in a string.

```java
public class MostFrequentChar {
    public static void main(String[] args) {
        String input = "success";
        System.out.println("Most Frequent: " + findMostFrequentChar(input));
    }

    public static char findMostFrequentChar(String input) {
        int[] freq = new int[256];
        for (char ch : input.toCharArray()) {
            freq[ch]++;
        }

        int max = 0;
        char result = ' ';
        for (char ch : input.toCharArray()) {
            if (freq[ch] > max) {
                max = freq[ch];
                result = ch;
            }
        }
        return result;
    }
}
```

📘 **Program 10: Remove a Specific Character from a String**
📝 Problem:
Write a Java program to remove all occurrences of a specific character from a string.

```java
public class RemoveChar {
    public static void main(String[] args) {
        String input = "Hello World";
        char ch = 'l';
        System.out.println("Modified: " + removeChar(input, ch));
    }

    public static String removeChar(String str, char ch) {
        String result = "";
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) != ch) {
                result += str.charAt(i);
            }
        }
        return result;
    }
}
```

📘 **Program 11: Check Anagrams**
📝 Problem:
Write a Java program that accepts two strings from the user and checks if they are anagrams.

```java
import java.util.Arrays;

public class AnagramCheck {
    public static void main(String[] args) {
        String s1 = "listen";
        String s2 = "silent";
        System.out.println("Are Anagrams? " + areAnagrams(s1, s2));
    }

    public static boolean areAnagrams(String s1, String s2) {
        char[] a1 = s1.toCharArray();
        char[] a2 = s2.toCharArray();
        Arrays.sort(a1);
        Arrays.sort(a2);
        return Arrays.equals(a1, a2);
    }
}
```

📘 **Program 12: Replace Word in Sentence**
📝 Problem:
Write a replace method in Java that replaces a given word with another word in a sentence.

```java
public class ReplaceWord {
    public static void main(String[] args) {
        String sentence = "Java is fun";
        String target = "fun";
        String replacement = "powerful";
        System.out.println("Modified: " + replaceWord(sentence, target, replacement));
    }

    public static String replaceWord(String sentence, String target, String replacement) {
        return sentence.replaceAll(target, replacement);
    }
}
```