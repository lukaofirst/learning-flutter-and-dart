/* --- Lists --- */

class Person {
  final String firstName;
  final String lastName;
  final int age;

  Person(this.firstName, this.lastName, this.age);

  @override
  String toString() {
    return '$firstName $lastName';
  }
}

List<String> strArr = ['lorem1', 'lorem2', 'lorem3'];
List<dynamic> dynamicArr = ['lorem1', 2, 10, 'another text'];
List<double> doubleArr = [10.25, -5.2, 20, 30];
List<Person> personArr = [
  new Person('Wally', 'Doe', 18),
  new Person('Lucas', 'Oliveira', 24),
  new Person('Arthur', 'Morgan', 33),
  new Person('John', 'Marston', 29),
];

// returns a list where x is greater than 12
var resultDoubleArr = doubleArr.where((x) => x > 12);

// map a string array and appends 'ipsum' on each element
var resultStrArr = strArr.map((e) => e + ' ' + 'ipsum');

// return a list where person has more than 20 years old
var resultPersonArr = personArr.where((x) => x.age > 20);

void main() {
  print(resultStrArr);
  print(resultDoubleArr);
  print(resultPersonArr);
}
