mixin Swimming {
  var swimmingSpeed = 10;

  void swim() => print('Swimming...');
}

mixin Dev {
  void code() => print("I can show it to you: print('Hello World!')");
}

class Mammal {
  void breathe() => print('I can breathe');
}

class Person extends Mammal with Swimming, Dev {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });
}

void main() {
  final person1 = Person(name: 'Lucas', age: 24);
  person1.breathe();
  print(person1.swimmingSpeed);
  person1.code();

  // Checking the relationships between classes
  // Person has types Person and Mammal
  // Person is not Dev type, but you can use his methods
  var type = person1.runtimeType;
  print(type == Person);
  print(type == Mammal);
  print(type == Dev);
}
