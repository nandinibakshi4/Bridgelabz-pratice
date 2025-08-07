//OOPS= ✅ Level 1 Practice Programs
🔹 1. Program to Display Employee Details
Problem Statement:
Write a program to create an Employee class with attributes name, id, and salary. Add a method to display the details.

public class Employee {
    private String name;
    private int id;
    private double salary;

    public Employee(String name, int id, double salary) {
        this.name = name;
        this.id = id;
        this.salary = salary;
    }

    public void displayDetails() {
        System.out.println("Employee Name: " + name);
        System.out.println("Employee ID: " + id);
        System.out.println("Salary: ₹" + salary);
    }

    public static void main(String[] args) {
        Employee emp = new Employee("Nandini", 101, 55000.00);
        emp.displayDetails();
    }
}
🔹 2. Program to Compute Area of a Circle
Problem Statement:
Create a Circle class with attribute radius. Add methods to calculate and display the area and circumference.

public class Circle {
    private double radius;

    public Circle(double radius) {
        this.radius = radius;
    }

    public double calculateArea() {
        return Math.PI * radius * radius;
    }

    public double calculateCircumference() {
        return 2 * Math.PI * radius;
    }

    public void displayDetails() {
        System.out.println("Radius: " + radius);
        System.out.println("Area: " + calculateArea());
        System.out.println("Circumference: " + calculateCircumference());
    }

    public static void main(String[] args) {
        Circle circle = new Circle(5.5);
        circle.displayDetails();
    }
}
🔹 3. Program to Handle Book Details
Problem Statement:
Create a Book class with attributes title, author, and price. Add a method to display book details.

public class Book {
    private String title;
    private String author;
    private double price;

    public Book(String title, String author, double price) {
        this.title = title;
        this.author = author;
        this.price = price;
    }

    public void displayDetails() {
        System.out.println("Title: " + title);
        System.out.println("Author: " + author);
        System.out.println("Price: ₹" + price);
    }

    public static void main(String[] args) {
        Book book = new Book("Java Programming", "James Gosling", 499.99);
        book.displayDetails();
    }
}
🔹 4. Program to Track Inventory of Items
Problem Statement:
Create an Item class with attributes itemCode, itemName, and price. Add a method to display item details and calculate total cost for a given quantity.

public class Item {
    private String itemCode;
    private String itemName;
    private double price;

    public Item(String itemCode, String itemName, double price) {
        this.itemCode = itemCode;
        this.itemName = itemName;
        this.price = price;
    }

    public void displayDetails() {
        System.out.println("Item Code: " + itemCode);
        System.out.println("Item Name: " + itemName);
        System.out.println("Price: ₹" + price);
    }

    public double calculateTotalCost(int quantity) {
        return price * quantity;
    }

    public static void main(String[] args) {
        Item item = new Item("A101", "Bluetooth Speaker", 1500.00);
        item.displayDetails();
        System.out.println("Total Cost for 3 items: ₹" + item.calculateTotalCost(3));
    }
}
🔹 5. Program to Handle Mobile Phone Details
Problem Statement:
Create a MobilePhone class with attributes brand, model, and price. Add a method to display phone details.

public class MobilePhone {
    private String brand;
    private String model;
    private double price;

    public MobilePhone(String brand, String model, double price) {
        this.brand = brand;
        this.model = model;
        this.price = price;
    }

    public void displayDetails() {
        System.out.println("Brand: " + brand);
        System.out.println("Model: " + model);
        System.out.println("Price: ₹" + price);
    }

    public static void main(String[] args) {
        MobilePhone phone = new MobilePhone("Samsung", "Galaxy S23", 69999.99);
        phone.displayDetails();
    }
}
✅ Level 2 Practice Programs
🔹 1. Program to Simulate Student Report
Problem Statement:
Create a Student class with attributes name, rollNumber, and marks. Add methods to calculate the grade and display student details.

public class Student {
    private String name;
    private int rollNumber;
    private int marks;

    public Student(String name, int rollNumber, int marks) {
        this.name = name;
        this.rollNumber = rollNumber;
        this.marks = marks;
    }

    public char calculateGrade() {
        if (marks >= 90) return 'A';
        else if (marks >= 75) return 'B';
        else if (marks >= 60) return 'C';
        else if (marks >= 40) return 'D';
        else return 'F';
    }

    public void displayDetails() {
        System.out.println("Student Name: " + name);
        System.out.println("Roll Number: " + rollNumber);
        System.out.println("Marks: " + marks);
        System.out.println("Grade: " + calculateGrade());
    }

    public static void main(String[] args) {
        Student student = new Student("Nandini", 1203, 88);
        student.displayDetails();
    }
}
🔹 2. Program to Simulate an ATM
Problem Statement:
Create a BankAccount class with attributes accountHolder, accountNumber, and balance. Add methods to deposit, withdraw, and display balance.

public class BankAccount {
    private String accountHolder;
    private String accountNumber;
    private double balance;

    public BankAccount(String accountHolder, String accountNumber, double balance) {
        this.accountHolder = accountHolder;
        this.accountNumber = accountNumber;
        this.balance = balance;
    }

    public void deposit(double amount) {
        balance += amount;
        System.out.println("₹" + amount + " deposited successfully.");
    }

    public void withdraw(double amount) {
        if (amount <= balance) {
            balance -= amount;
            System.out.println("₹" + amount + " withdrawn successfully.");
        } else {
            System.out.println("Insufficient balance.");
        }
    }

    public void displayBalance() {
        System.out.println("Account Holder: " + accountHolder);
        System.out.println("Account Number: " + accountNumber);
        System.out.println("Current Balance: ₹" + balance);
    }

    public static void main(String[] args) {
        BankAccount account = new BankAccount("Nandini Bakshi", "SBIN00123", 10000);
        account.displayBalance();
        account.deposit(5000);
        account.withdraw(3000);
        account.displayBalance();
    }
}
🔹 3. Program to Check Palindrome String
Problem Statement:
Create a PalindromeChecker class with attribute text. Add methods to check if it’s a palindrome and display result.

public class PalindromeChecker {
    private String text;

    public PalindromeChecker(String text) {
        this.text = text;
    }

    public boolean isPalindrome() {
        String reversed = new StringBuilder(text).reverse().toString();
        return text.equalsIgnoreCase(reversed);
    }

    public void displayResult() {
        System.out.println("Input Text: " + text);
        System.out.println("Is Palindrome? " + isPalindrome());
    }

    public static void main(String[] args) {
        PalindromeChecker checker = new PalindromeChecker("Madam");
        checker.displayResult();
    }
}
🔹 4. Program to Model a Movie Ticket Booking System
Problem Statement:
Create a MovieTicket class with attributes movieName, seatNumber, and price. Add methods to book a ticket and display details.

public class MovieTicket {
    private String movieName;
    private String seatNumber;
    private double price;

    public MovieTicket(String movieName, String seatNumber, double price) {
        this.movieName = movieName;
        this.seatNumber = seatNumber;
        this.price = price;
    }

    public void displayDetails() {
        System.out.println("Movie: " + movieName);
        System.out.println("Seat Number: " + seatNumber);
        System.out.println("Ticket Price: ₹" + price);
    }

    public static void main(String[] args) {
        MovieTicket ticket = new MovieTicket("Inception", "A10", 250.00);
        ticket.displayDetails();
    }
}
🔹 5. Program to Simulate a Shopping Cart
Problem Statement:
Create a CartItem class with attributes itemName, price, and quantity. Add methods to add item, remove item, and calculate total cost.

public class CartItem {
    private String itemName;
    private double price;
    private int quantity;

    public CartItem(String itemName, double price, int quantity) {
        this.itemName = itemName;
        this.price = price;
        this.quantity = quantity;
    }

    public void addQuantity(int qty) {
        quantity += qty;
    }

    public void removeQuantity(int qty) {
        if (qty <= quantity) {
            quantity -= qty;
        } else {
            System.out.println("Cannot remove more than available quantity.");
        }
    }

    public double calculateTotal() {
        return price * quantity;
    }

    public void displayCart() {
        System.out.println("Item: " + itemName);
        System.out.println("Price: ₹" + price);
        System.out.println("Quantity: " + quantity);
        System.out.println("Total Cost: ₹" + calculateTotal());
    }

    public static void main(String[] args) {
        CartItem item = new CartItem("Laptop Bag", 1200.00, 2);
        item.displayCart();
        item.addQuantity(1);
        item.removeQuantity(1);
        item.displayCart();
    }
}