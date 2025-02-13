class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  // Getters
  int getId() {
    return _id;
  }

  String getBrand() {
    return _brand;
  }

  String getColor() {
    return _color;
  }

  double getPrice() {
    return _price;
  }

  // Setters
  int setId() {
    return _id;
  }

  String setBrand() {
    return _brand;
  }

  String setColor() {
    return _color;
  }

  double setPrice() {
    return _price;
  }

  void display() {
    print('ID: $_id, Brand: $_brand, Color: $_color, Price: $_price');
  }
}

void main() {
  var camera1 = Camera(1, 'Canon', 'Black', 1200.50);
  var camera2 = Camera(2, 'Nikon', 'Grey', 950.75);
  var camera3 = Camera(3, 'Sony', 'White', 1100.00);

  camera1.display();
  camera2.display();
  camera3.display();
}

