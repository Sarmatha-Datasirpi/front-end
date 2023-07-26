class Animals {
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  void display() {
    print("Animal name: $name.");
    print("Number of Legs: $numberOfLegs.");
    print("Life Span: $lifeSpan.");
  }
}

class Car {
  String? name;
  double? prize;

  // Constructor
  Car(String name, double prize) {
    //Parameterized Constructor
    this.name = name;
    this.prize = prize;
  }

  // Method
  void display() {
    print("Name: ${this.name}");
    print("Prize: ${this.prize}");
  }
}

class Person {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor in short form
  Person(this.name, this.age, this.subject, this.salary);

  // display method
  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}");
  }
}

class Table {
  String? name;
  String? color;

  // Constructor
  Table(
      {this.name = "Table1",
      this.color = "White"}); //Constructor With Default Values & Named Parameters

  // Method
  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Constructor
  Student({String? name, int? age, int? rollNumber}) {      //Parameterized Constructor With Named Parameters
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}


class Animal {
  String? name;
  int? age;

  // Default Constructor
  Animal() {
    print("This is a default constructor");
  }

  // Named Constructor
  Animal.namedConstructor(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // Named Constructor
  Animal.namedConstructor2(String name) {
    this.name = name;
  }
}


class Cars {
  final String? name;
  final String? model;
  final int? prize;

  // Constant Constructor
  const Cars({this.name, this.model, this.prize});
}

  


  
void main() {
  // Here animal is object of class Animal.
  Animals animals = Animals(); //Without Constructor
  animals.name = "Tiger";
  animals.numberOfLegs = 4;
  animals.lifeSpan = 8;
  animals.display();
  Car car = Car("BMW", 500000.0);
  car.display();
  Person person = Person("John", 30, "Maths", 50000.0);
  person.display();
  Table table = Table();
  table.display();
  Student student = Student(name: "John", age: 20, rollNumber: 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
  Animal animal = Animal.namedConstructor("Dog", 5);
  print("Name: ${animal.name}");
  print("Age: ${animal.age}");
  Animal animal2 = Animal.namedConstructor2("Cat");
  print("Name: ${animal2.name}");
  const Cars cars = Cars(name: "BMW", model: "X5", prize: 50000);
  print("Name: ${cars.name}");
  print("Model: ${cars.model}");
  print("Prize: ${cars.prize}");

}
