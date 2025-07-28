Program 1: Find Harry’s Age
Q: Write a program to find the age of Harry if the birth year is 2000. Assume the current year is 2024.

class HarryAgeCalculator {
    public static void main(String[] args) {
        int birthYear = 2000;
        int currentYear = 2024;
        int age = currentYear - birthYear;

        System.out.println("Harry's age in " + currentYear + " is " + age);
    }
}

Program 2: Average Marks in PCM
Q: Sam’s mark in Maths is 94, Physics is 95, and Chemistry is 96 out of 100. Find the average percentage mark in PCM.


class PCMMarksAverage {
    public static void main(String[] args) {
        int mathsMark = 94;
        int physicsMark = 95;
        int chemistryMark = 96;

        double averageMark = (mathsMark + physicsMark + chemistryMark) / 3.0;

        System.out.println("Sam’s average mark in PCM is " + averageMark);
    }
}

Program 3: Convert 10.8 km to Miles
Q: Create a program to convert the distance of 10.8 kilometers to miles.


class KilometerToMiles {
    public static void main(String[] args) {
        double distanceInKm = 10.8;
        double kmToMilesFactor = 1.6;
        double distanceInMiles = distanceInKm * kmToMilesFactor;

        System.out.println("The distance " + distanceInKm + " km in miles is " + distanceInMiles);
    }
}

Program 4: Profit & Profit Percentage
Q: Create a program to calculate the profit and profit percentage based on the cost price of INR 129 and 
the selling price of INR 191.


class ProfitCalculator {
    public static void main(String[] args) {
        double costPrice = 129;
        double sellingPrice = 191;
        double profit = sellingPrice - costPrice;
        double profitPercent = (profit / costPrice) * 100;

        System.out.println("The Cost Price is INR " + costPrice + " and Selling Price is INR " + sellingPrice + 
                           "\nThe Profit is INR " + profit + " and the Profit Percentage is " + profitPercent);
    }
}

Program 5: Divide Pens Among Students
Q: Suppose you have to divide 14 pens among 3 students equally. Write a program to 
find how many pens each student will get and how many pens will remain undistributed.


class PenDistribution {
    public static void main(String[] args) {
        int totalPens = 14;
        int students = 3;

        int pensPerStudent = totalPens / students;
        int remainingPens = totalPens % students;

        System.out.println("The Pen Per Student is " + pensPerStudent + " and the remaining pen not distributed is " + remainingPens);
    }
}

Program 6: Discounted University Fee
Q: The University charges a fee of INR 125000. It offers a 10% discount. Write a program
 to find the discount amount and the final fee to be paid.


class DiscountCalculator {
    public static void main(String[] args) {
        double fee = 125000;
        double discountPercent = 10;
        double discount = (fee * discountPercent) / 100;
        double finalFee = fee - discount;

        System.out.println("The discount amount is INR " + discount + " and final discounted fee is INR " + finalFee);
    }
}

Program 7: Volume of Earth in km³ and miles³
Q: Write a program to compute the volume of Earth in km³ and miles³.


class EarthVolumeCalculator {
    public static void main(String[] args) {
        double radiusKm = 6378;
        double volumeKm = (4.0 / 3) * Math.PI * Math.pow(radiusKm, 3);
        double kmToMilesFactor = 1.6;
        double radiusMiles = radiusKm / kmToMilesFactor;
        double volumeMiles = (4.0 / 3) * Math.PI * Math.pow(radiusMiles, 3);

        System.out.println("The volume of earth in cubic kilometers is " + volumeKm + " and cubic miles is " + volumeMiles);
    }
}

Program 8: Convert km to miles (User Input)
Q: Create a program to convert distance in kilometers to miles using user input.


import java.util.Scanner;

class ConvertKmToMiles {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double km, miles;

        System.out.print("Enter distance in kilometers: ");
        km = input.nextDouble();

        miles = km / 1.6;

        System.out.println("The total miles is " + miles + " mile for the given " + km + " km");
    }
}

Program 9: Discounted Fee (User Input)
Q: Write a program to take the student fee and discount percent as input,
 and calculate the discount amount and final fee.


import java.util.Scanner;

class DiscountedFeeCalculator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double fee, discountPercent;

        System.out.print("Enter total fee: ");
        fee = input.nextDouble();

        System.out.print("Enter discount percentage: ");
        discountPercent = input.nextDouble();

        double discount = (fee * discountPercent) / 100;
        double finalFee = fee - discount;

        System.out.println("The discount amount is INR " + discount + " and final discounted fee is INR " + finalFee);
    }
}

Program 10: Convert Height in cm to Feet and Inches
Q: Write a program that takes your height in centimeters and converts it to feet and inches.


import java.util.Scanner;

class HeightConverter {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter your height in cm: ");
        double heightCm = input.nextDouble();

        double heightInches = heightCm / 2.54;
        double heightFeet = heightInches / 12;

        System.out.println("Your Height in cm is " + heightCm + " while in feet is " + heightFeet + " and inches is " + heightInches);
    }
}

Program 11: Basic Calculator
Q: Write a program to take two numbers as input and perform addition, subtraction,
 multiplication, and division on them.

import java.util.Scanner;

class BasicCalculator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter first number: ");
        double number1 = input.nextDouble();

        System.out.print("Enter second number: ");
        double number2 = input.nextDouble();

        double addition = number1 + number2;
        double subtraction = number1 - number2;
        double multiplication = number1 * number2;
        double division = number1 / number2;

        System.out.println("The addition, subtraction, multiplication and division value of 2 numbers " +
                           number1 + " and " + number2 + " is " +
                           addition + ", " + subtraction + ", " + multiplication + ", and " + division);
    }
}

Program 12: Area of Triangle in cm² and inches²
Q: Write a program that takes base and height of a triangle in cm and calculates the 
area in both square centimeters and square inches.

import java.util.Scanner;

class TriangleArea {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter base in cm: ");
        double base = input.nextDouble();

        System.out.print("Enter height in cm: ");
        double height = input.nextDouble();

        double areaCm = 0.5 * base * height;
        double areaInches = areaCm / 6.4516;

        System.out.println("The area of triangle is " + areaCm + " cm² and " + areaInches + " inches²");
    }
}

Program 13: Side of Square from Perimeter
Q: Write a program to find the side of the square if its perimeter is provided by the user.


import java.util.Scanner;

class SquareSideCalculator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter perimeter of square: ");
        double perimeter = input.nextDouble();

        double side = perimeter / 4;

        System.out.println("The length of the side is " + side + " whose perimeter is " + perimeter);
    }
}

Program 14: Convert Feet to Yards and Miles
Q: Write a program to find the distance in yards and miles from a user-provided distance in feet.


import java.util.Scanner;

class FeetToYardMiles {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter distance in feet: ");
        double distanceInFeet = input.nextDouble();

        double distanceInYards = distanceInFeet / 3;
        double distanceInMiles = distanceInYards / 1760;

        System.out.println("The distance is " + distanceInFeet + " feet, " + distanceInYards + 
                           " yards and " + distanceInMiles + " miles");
    }
}

Program 15: Total Purchase Price
Q: Write a program to input the unit price of an item and the quantity to be bought.
 Then, calculate and display the total price.


import java.util.Scanner;

class PurchasePriceCalculator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter unit price: ");
        double unitPrice = input.nextDouble();

        System.out.print("Enter quantity: ");
        int quantity = input.nextInt();

        double totalPrice = unitPrice * quantity;

        System.out.println("The total purchase price is INR " + totalPrice + 
                           " if the quantity " + quantity + " and unit price is INR " + unitPrice);
    }
}

Program 16: Maximum Handshakes
Q: Create a program to find the maximum number of handshakes possible among n students.


import java.util.Scanner;

class HandshakeCalculator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter number of students: ");
        int numberOfStudents = input.nextInt();

        int handshakes = (numberOfStudents * (numberOfStudents - 1)) / 2;

        System.out.println("The maximum number of handshakes among " + numberOfStudents + " students is " + handshakes);
    }
}

