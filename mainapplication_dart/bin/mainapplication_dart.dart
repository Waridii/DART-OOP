// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a base class
class LivingThing {
  void breathe() {
    print('Breathing...');
  }
}

// Define a subclass that implements the Animal interface and overrides a method
class Dog extends LivingThing implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

// Define a class that reads data from a file and initializes an instance
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  factory Person.fromFile(String filename) {
    // Code to read data from file and parse it
    String fileData = 'John Doe,30';
    List<String> parts = fileData.split(',');
    String name = parts[0];
    int age = int.parse(parts[1]);
    return Person(name, age);
  }
}

// Define a method that demonstrates the use of a loop
void printNumbers() {
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}

void main() {
  // Create an instance of the Dog class
  Dog dog = Dog();
  dog.breathe();
  dog.makeSound();

  // Create an instance of the Person class from a file
  Person person = Person.fromFile('data.txt');
  print('Name: ${person.name}, Age: ${person.age}');

  // Demonstrate the use of a loop
  printNumbers();
}
