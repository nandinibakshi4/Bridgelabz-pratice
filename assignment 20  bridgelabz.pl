//STRINGS level1

// Program 1: Find all occurrences of a character in a string
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
    System.out.println("Indexes of the character '" + ch + "': " + Arrays.toString(indexes));
  }
}

// Program 2: Compare two strings using charAt and equals()
class StringComparison {
  public static boolean areEqualByChar(String a, String b) {
    if (a.length() != b.length()) return false;
    for (int i = 0; i < a.length(); i++) {
      if (a.charAt(i) != b.charAt(i)) return false;
    }
    return true;
  }
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter first string: ");
    String a = sc.next();
    System.out.print("Enter second string: ");
    String b = sc.next();
    boolean byChar = areEqualByChar(a, b);
    boolean byEquals = a.equals(b);
    System.out.println("Equal by charAt(): " + byChar);
    System.out.println("Equal by equals(): " + byEquals);
  }
}

// Program 3: Create substring using charAt and compare with built-in substring()
class SubstringComparison {
  public static String getSubstring(String text, int start, int end) {
    String sub = "";
    for (int i = start; i < end; i++) sub += text.charAt(i);
    return sub;
  }
  public static boolean areEqualByChar(String a, String b) {
    if (a.length() != b.length()) return false;
    for (int i = 0; i < a.length(); i++) if (a.charAt(i) != b.charAt(i)) return false;
    return true;
  }
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter text: ");
    String text = sc.next();
    System.out.print("Start index: ");
    int start = sc.nextInt();
    System.out.print("End index: ");
    int end = sc.nextInt();
    String userSub = getSubstring(text, start, end);
    String builtInSub = text.substring(start, end);
    System.out.println("User-defined substring: " + userSub);
    System.out.println("Built-in substring: " + builtInSub);
    System.out.println("Are they equal? " + areEqualByChar(userSub, builtInSub));
  }
}

// Program 4: Convert string to char array using method and compare to toCharArray
class CharArrayCompare {
  public static char[] toCharArrayManual(String text) {
    char[] arr = new char[text.length()];
    for (int i = 0; i < text.length(); i++) arr[i] = text.charAt(i);
    return arr;
  }
  public static boolean compareCharArrays(char[] a, char[] b) {
    return Arrays.equals(a, b);
  }
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter text: ");
    String text = sc.next();
    char[] manual = toCharArrayManual(text);
    char[] builtin = text.toCharArray();
    System.out.println("Manual: " + Arrays.toString(manual));
    System.out.println("Built-in: " + Arrays.toString(builtin));
    System.out.println("Are arrays equal? " + compareCharArrays(manual, builtin));
  }
}

// Program 5: NullPointerException
class NullPointerDemo {
  public static void generateNullPointer() {
    String text = null;
    System.out.println(text.length()); // throws NullPointerException
  }
  public static void handleNullPointer() {
    try {
      String text = null;
      System.out.println(text.length());
    } catch (NullPointerException e) {
      System.out.println("Caught NullPointerException: " + e.getMessage());
    }
  }
  public static void main(String[] args) {
    // generateNullPointer(); // will crash
    handleNullPointer();
  }
}

// Program 6: StringIndexOutOfBoundsException
class StringIndexDemo {
  public static void generateStringIndexError() {
    String name = "Java";
    System.out.println(name.charAt(10));
  }
  public static void handleStringIndexError() {
    try {
      String name = "Java";
      System.out.println(name.charAt(10));
    } catch (StringIndexOutOfBoundsException e) {
      System.out.println("Caught Exception: " + e);
    }
  }
  public static void main(String[] args) {
    // generateStringIndexError();
    handleStringIndexError();
  }
}

// Program 7: IllegalArgumentException
class IllegalArgumentDemo {
  public static void generateIllegalArgument() {
    String text = "hello";
    System.out.println(text.substring(4, 2));
  }
  public static void handleIllegalArgument() {
    try {
      String text = "hello";
      System.out.println(text.substring(4, 2));
    } catch (IllegalArgumentException e) {
      System.out.println("Caught Exception: " + e);
    }
  }
  public static void main(String[] args) {
    // generateIllegalArgument();
    handleIllegalArgument();
  }
}

// Program 8: NumberFormatException
class NumberFormatDemo {
  public static void generateNumberFormat() {
    String value = "abc";
    int num = Integer.parseInt(value);
  }
  public static void handleNumberFormat() {
    try {
      String value = "abc";
      int num = Integer.parseInt(value);
    } catch (NumberFormatException e) {
      System.out.println("Caught Exception: " + e);
    }
  }
  public static void main(String[] args) {
    // generateNumberFormat();
    handleNumberFormat();
  }
}

// Program 9: ArrayIndexOutOfBoundsException
class ArrayIndexDemo {
  public static void generateArrayIndexError() {
    String[] names = {"Ram", "Shyam"};
    System.out.println(names[5]);
  }
  public static void handleArrayIndexError() {
    try {
      String[] names = {"Ram", "Shyam"};
      System.out.println(names[5]);
    } catch (ArrayIndexOutOfBoundsException e) {
      System.out.println("Caught Exception: " + e);
    }
  }
  public static void main(String[] args) {
    // generateArrayIndexError();
    handleArrayIndexError();
  }
}

// Program 10: Convert to uppercase using ASCII logic and compare
class ToUpperCompare {
  public static String toUpperCustom(String text) {
    String result = "";
    for (int i = 0; i < text.length(); i++) {
      char c = text.charAt(i);
      if (c >= 'a' && c <= 'z') result += (char)(c - 32);
      else result += c;
    }
    return result;
  }
  public static boolean compareStrings(String a, String b) {
    return a.equals(b);
  }
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    String text = sc.nextLine();
    String custom = toUpperCustom(text);
    String builtin = text.toUpperCase();
    System.out.println("Custom: " + custom);
    System.out.println("Built-in: " + builtin);
    System.out.println("Match? " + compareStrings(custom, builtin));
  }
}

// Program 11: Convert to lowercase using ASCII logic and compare
class ToLowerCompare {
  public static String toLowerCustom(String text) {
    String result = "";
    for (int i = 0; i < text.length(); i++) {
      char c = text.charAt(i);
      if (c >= 'A' && c <= 'Z') result += (char)(c + 32);
      else result += c;
    }
    return result;
  }
  public static boolean compareStrings(String a, String b) {
    return a.equals(b);
  }
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    String text = sc.nextLine();
    String custom = toLowerCustom(text);
    String builtin = text.toLowerCase();
    System.out.println("Custom: " + custom);
    System.out.println("Built-in: " + builtin);
    System.out.println("Match? " + compareStrings(custom, builtin));
  }
}
