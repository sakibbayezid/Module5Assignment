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
