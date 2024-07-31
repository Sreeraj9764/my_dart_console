
mixin Ability {
  int get feetCount;
  void jump() {
    if (feetCount < 1) {
      print("can't jumb");
    } else {
      print("can jumb");
    }
  }
}

enum Animal with Ability {
  dog(feetCount: 4),
  fish(feetCount: 0);

  @override
  final int feetCount;
  const Animal({required this.feetCount});
}

enum Person {
  ramu(name: "Ramu",age: 20);

  final String? name;
  final int? age;

  const Person({this.name, this.age});

  factory Person.fromPerson(Person person)=>ramu;
  
}
