
//  Task 1
class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    if (discountPercent < 0) discountPercent = 0;
    if (discountPercent > 100) discountPercent = 100;
    return price * (1 - discountPercent / 100);
  }

  void printDetailsWithDiscount(double discountPercent) {
    print(
        "Title: $title, Author: $author, Original Price: $price, "
            "Price after $discountPercent% discount: ${discountedPrice(discountPercent)}");
  }
}

// Task 2
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  void displayInfo() {
    print("Manager -> Name: $name, Salary: $salary, Department: $department");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  void displayInfo() {
    print(
        "Developer -> Name: $name, Salary: $salary, Programming Language: $programmingLanguage");
  }
}

// Task 3
abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is now running.");
  }

  @override
  void turnOff() {
    print("Fan has been stopped.");
  }
}

class Light extends Appliance {
  @override
  void turnOn() {
    print("Light is switched on.");
  }

  @override
  void turnOff() {
    print("Light is switched off.");
  }
}

//  Main
void main() {
  print("=== Task 1: Books ===");
  Book b1 = Book("The Alchemist", "Paulo Coelho", 250.0);
  Book b2 = Book("Clean Code", "Robert C. Martin", 450.0);
  b1.printDetailsWithDiscount(10);
  b2.printDetailsWithDiscount(25);

  print("\n=== Task 2: Employees ===");
  Manager m = Manager("Alice", 85000, "Sales");
  Developer d = Developer("Bob", 90000, "Dart");
  m.displayInfo();
  d.displayInfo();

  print("\n=== Task 3: Appliances ===");
  Appliance fan = Fan();
  Appliance light = Light();
  fan.turnOn();
  fan.turnOff();
  light.turnOn();
  light.turnOff();
}
