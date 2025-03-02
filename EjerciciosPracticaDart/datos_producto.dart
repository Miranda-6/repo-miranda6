import 'dart:io';

class Producto {
  String productName = '';
  double price = 0.0;
  bool inStock = false;
  List<String> categories = [];
  String description = '';

  void assignProductInfo(
    String productName,
    double price,
    bool inStock,
    List<String> categories,
    String description,
  ) {
    this.productName = productName;
    this.price = price;
    this.inStock = inStock;
    this.categories = categories;
    this.description = description;
  }

  void printProductInfo() {
    dynamic product_info = {
      'Product Name': this.productName,
      'Price': this.price,
      'In Stock?': this.inStock,
      'Categories': this.categories,
      'Description': this.description,
    };

    print(product_info);
  }
}

void main() {
  Producto producto = new Producto();

  producto.assignProductInfo(
    "Laptop Gamer",
    2000000,
    true,
    ['Electrónica', 'Computadoras', 'Gaming'],
    "Laptop de alto rendimiento para juegos y trabajo.",
  );

  producto.printProductInfo();
}
