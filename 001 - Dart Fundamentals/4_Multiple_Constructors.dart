// Multiple Constructors

class Developer {
  final String? name;
  final int? age;
  String? job;

  Developer({this.name, this.age, this.job});

  // This constructor acts like a helper, in case, you have a default
  // value, but you want to set some custom variables
  Developer.mainJob(this.name, this.age) {
    job = "Fullstack";
  }
}

void main() {
  var dev1 = Developer(name: 'Lucas', age: 24, job: 'Frontend');
  var dev2 = Developer.mainJob('John Doe', 25);

  print(dev1.name);
  print(dev1.job);
  print(dev1.age);
  print('---------');
  print(dev2.name);
  print(dev2.job);
  print(dev2.age);
}
