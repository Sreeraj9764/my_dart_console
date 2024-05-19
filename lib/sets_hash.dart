final person1 = Person1(name: "Amar", age: 20);
final person2 = Person1(name: "Amar", age: 20);
final persons = {person1, person2};

class Person1 {
  final String name;
  final int age;
  Person1({required this.name, required this.age});

  @override
  String toString() {
    return "Name is : $name , Age is : $age";
  }

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person1 && name == other.name && age == other.age;
}

class Person2 {
  final String name;
  final int age;
  Person2({required this.name, required this.age});

  @override
  String toString() {
    return "Name is : $name , Age is : $age";
  }

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person2 && name == other.name && age == other.age;
}
