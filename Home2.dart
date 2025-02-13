class Animal {
  int? id;
  String? name;
  String? color;

  Animal(this.id, this.name, this.color);

  void display() {
    print('ID: $id, Name: $name, Color: $color');
  }
}

class Cat extends Animal {
  String? sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);

  @override
  display() {
    super.display();
    print('Sound: $sound');
  }
}

void main() {
  Cat ipusii = Cat(1, "Imbwa", "White","Meow");
  ipusii.display();
}
