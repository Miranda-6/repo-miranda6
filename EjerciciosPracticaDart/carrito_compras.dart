/* Ejercicio 12: 
Enunciado:
Crea un programa que simule un carrito de compras. Usa un array para almacenar los productos (objetos con nombre y precio). Luego, crea una función que calcule el total del carrito.
*/

import 'dart:io';

class Producto {
  String nombre = '';
  double precio = 0.0;

  Producto(this.nombre, this.precio);
}

class CarritoCompras {
  List<Producto> productos = [];

  void agregarProducto(String nombre, double precio) {
    productos.add(Producto(nombre, precio));
  }

  double calcularTotal() {
    //Fold: Un método que encontré para realizar una operación sobre dos elementos del carrito.
    //params - lista.fold(valorInicial, (acumulador, elemento) => operación);

    return productos.fold(0.0, (total, producto) => total + producto.precio);
  }

  void imprimirCarrito() {
    print("\n🛒 CARRITO DE COMPRAS");
    print("──────────────────────────");
    if (productos.isEmpty) {
      print("El carrito está vacío.");
    } else {
      for (var producto in productos) {
        print("- ${producto.nombre}: \$${producto.precio.toStringAsFixed(2)}");
      }
      print("──────────────────────────");
      print("Total: \$${calcularTotal().toStringAsFixed(2)}");
    }
    print("──────────────────────────\n");
  }
}

void main() {
  CarritoCompras carrito = CarritoCompras();

  carrito.agregarProducto("Laptop", 1200.99);
  carrito.agregarProducto("Mouse Gamer", 35.50);
  carrito.agregarProducto("Teclado Mecánico", 75.00);

  carrito.imprimirCarrito();
}
