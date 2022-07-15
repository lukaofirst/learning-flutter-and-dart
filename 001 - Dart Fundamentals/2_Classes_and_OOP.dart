// Classes and OOP

// Difference between 'const' and 'final' keywords
// const => value must be known at compile-time
// can't be changed after initialized

// final => value must be known at run-time
// can't be changed after initialized

// ----------------------

/* --- Classes --- */

// abstract class
abstract class BasePerson {
  final int id;

  BasePerson(this.id);
}

// inheritance from abstract class
class Person extends BasePerson {
  // with 'final' keyword, you cannot reassign another value
  final int id;
  final String firstName;
  final String lastName;
  final int age;

  Person(this.id, this.firstName, this.lastName, this.age) : super(id);

  @override
  String toString() {
    return 'id: $id | fullName: $firstName $lastName | age: $age years old';
  }
}

// ----------------------

/* --- Named Arguments --- */
// you can switch the order of the arguments

// shorter syntax
class Car {
  final String? model;
  final int? year;

  Car({this.model, this.year});
}

// longest syntax
// class Car {
//   String? model;
//   int? year;

//   Car({String? model, int? year}) {
//     this.model = model;
//     this.year = year;
//   }
// }

var car1 = new Car(model: 'Fox', year: 2014);
var car2 = new Car(year: 2016, model: 'Onix');

// ----------------------

/* ---  root function of your app --- */
void main() {
  var person1 = new Person(1, 'Lucas', 'Oliveira', 24);
  var person2 = new Person(2, 'Arthur', 'Morgan', 33);

  print(car1.model);
  print(car2.model);

  print(person1.toString());
  print(person2.toString());
}
