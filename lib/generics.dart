abstract class CanWalk {
  void canWalk() {}
}

class Person extends CanWalk {
  Person() : super();
  @override
  void canWalk() {
    print("Person is walking");
  }
}

class Tiger extends CanWalk {
  Tiger() : super();
  @override
  void canWalk() {
    print("Tiger is walking");
  }
}

typedef ThinksCanWalk<T extends CanWalk> = Map<String, T>;

final p1 = Person();
final p2 = Person();
final p3 = Tiger();

final thingsCanWalk = [
  {"p1": p1},
  {"p2": p2},
  {"p3": p3},
];

abstract class Height<H extends num> {
  H get height;
}

typedef IntHeight = Height<int>;
typedef DoubleHeight = Height<double>;

class Tree extends DoubleHeight {
  Tree({required this.height});
  @override
  double height;
}

class Table extends IntHeight {
  @override
  int height;
  Table({required this.height});
}

final obj1 = Tree(height: 2.0);
final obj2 = Table(height: 5);

////////////////////////////////////

abstract class Thing {
  final String name;
  Thing({required this.name});
}

class CurrentPerson extends Thing {
  final int age;
  CurrentPerson({required this.age}) : super(name: "Person");
}

class Animal extends Thing {
  final double color;
  Animal({required this.color}) : super(name: "Animal");
}


