import 'dart:io';

class EjerciciosPracticaCSVI {
  void AreaRectangulo() {
    try {
      print('Ingrese la altura del rectángulo: ');
      String? input_altura = stdin.readLineSync();
      double altura_r = double.parse(input_altura!);

      print('Ingrese la base del rectángulo: ');
      String? input_base = stdin.readLineSync();
      double base_r = double.parse(input_base!);

      double area = (base_r * altura_r);
      print("La base del rectángulo es ${area}");
    } catch (Exception) {
      print(Exception);
    }
  }

  void ConvertirTemperatura() {
    try {
      print('Ingrese la temperatura en Celsius: ');
      String? input_temp = stdin.readLineSync();
      double temperatura_celsius = double.parse(input_temp!);

      double temperatura_farenheit = ((temperatura_celsius * 1.8) + 32);
      print(
        "La temperatura en Farenheit corresponde a: ${temperatura_farenheit}",
      );
    } catch (Exception) {
      print(Exception);
    }
  }

  void NumeroParImpar() {
    print('Ingrese un número: ');
    String? input_num = stdin.readLineSync();
    double numero = double.parse(input_num!);
    bool esPar = numero % 2 == 0;
    if (esPar) {
      print("Número ingresado es par.");
    } else {
      print("Número ingresado es impar.");
    }
  }

  void AumentoSalario() {
    print('Ingrese el salario del trabajador: ');
    String? input_salario = stdin.readLineSync();
    double salario = double.parse(input_salario!);

    salario += (salario * 0.10);

    print("Nuevo salario: ${salario}");
  }

  void DescuentoVeinte() {
    print('Ingrese el valor del producto: ');
    String? input_precio = stdin.readLineSync();
    double precio = double.parse(input_precio!);

    precio -= (precio * 0.20);

    print("Descuento del 20% aplicado!");
    print("Valor a pagar: ${precio}");
  }

  void MayorEdad() {
    /*

      6. Determinar si una persona es mayor de edad
      Enunciado: Escribe un programa que pida la edad de una persona y determine si es mayor o menor de edad (18 años).

    */

    print('Ingrese su edad: ');
    String? input_edad = stdin.readLineSync();
    int edad = int.parse(input_edad!);

    if (edad >= 18) {
      print("El usuario es mayor de edad.");
    } else {
      print("Acceso denegado. Usuario menor de edad");
    }
  }

  void NumeroMayorCero() {
    try {
      print('Ingrese un numero: ');
      String? input_numero = stdin.readLineSync();
      int numero = int.parse(input_numero!);

      if (numero > 0) {
        print("Número mayor a cero.");
      } else if (numero < 0) {
        print("Número negativo!");
      } else if (numero == 0) {
        print("Número cero.");
      }
    } catch (FormatException) {
      print("El dato introducido no es un número válido.");
    }
  }

  void AnioBisiesto() {
    /* Enunciado: Un año es bisiesto si es divisible por 4, 
    pero no por 100, salvo que también sea divisible por 400. */

    try {
      print('Ingrese un año: ');
      String? input_anio = stdin.readLineSync();
      int year = int.parse(input_anio!);

      bool divisibleCuatro = (year % 4) == 0;
      bool divisibleCien = (year % 100) == 0;
      bool divisibleCuatroscientos = (year % 400) == 0;

      if ((divisibleCuatro) & !(divisibleCien) | (divisibleCuatroscientos)) {
        print("Año bisiesto");
      } else {
        print("Año no bisiesto.");
      }
    } catch (FormatException) {
      print("El dato introducido no es un año válido.");
    }
  }

  void Ejercicio9() {
    /*
  Enunciado: Si compras más de 10 productos, 
  obtienes 20% de descuento, si compras entre 5 y 10, obtienes 10%.
  */
    int counter = 0;
    List<String?> lista_productos = [];
    bool disparador = true;

    while (disparador) {
      print('Deseas comprar un producto?: (1- Si - 2- No)');
      String? input_text = stdin.readLineSync();
      int decision = int.parse(input_text!);

      switch (decision) {
        case 1:
          counter += 1;
          print("Ingrese el nombre del producto: ");
          String? producto = stdin.readLineSync();
          lista_productos.add(producto);
          break;

        case 2:
          disparador = false;
          print("Saliendo...");
          break;

        default:
          print("Error, opción inválida.");
      }
    }

    double discount = 0.0;
    if (counter > 10) {
      discount = 0.20;
    } else if (counter >= 5 && counter <= 10) {
      discount = 0.10;
    }

    print("Lista de productos: $lista_productos");
    print("Número de productos comprados: $counter");
    print("Descuento aplicado: ${discount * 100}%");
  }

  void MenuOpciones() {
    bool closeMenu = false;
    print("Selecciona una de las sgtes. opciones: ");

    try {
      do {
        print("1- Saludar\n2- Despedirse\n3-Salir");
        String? input_option = stdin.readLineSync();
        int option = int.parse(input_option!);

        switch (option) {
          case 1:
            print("Hi mate :)");

            break;
          case 2:
            print("Bye, cya later!");
          case 3:
            print("Closing app... :(");
            closeMenu = true;
          default:
            print("Error, opción incorrecta.");
        }
      } while (!closeMenu);
    } catch (FormatException) {
      print("Valor ingresado no es un número.");
    }
  }

  void ClaveCorrecta() {
    bool clave_correcta = false;
    int default_password = 1234;

    print("Ingresa la clave para acceder al sistema: ");

    while (!clave_correcta) {
      String? input_password = stdin.readLineSync();
      int password = int.parse(input_password!);
      if (password == default_password) {
        print("Clave correcta.");
        print("Accediendo al sistema...");
        clave_correcta = true;
      } else {
        print("Clave incorrecta, intenta de nuevo!");
      }
    }
  }

  void MayorDosNumeros() {
    print("Ingresa el primer numero: ");
    String? input_num1 = stdin.readLineSync();
    double num1 = double.parse(input_num1!);

    print("Ingresa el segundo numero: ");
    String? input_num2 = stdin.readLineSync();
    double num2 = double.parse(input_num2!);

    if (num1 > num2) {
      print("Primer númer mayor que el segundo. ${num1} > ${num2}");
    } else if (num1 == num2) {
      print("Ambos números son iguales. ${num1} = ${num2}");
    } else {
      print("El segundo número es mayor al primero. ${num2} > ${num1}");
    }
  }
}

void main() {
  EjerciciosPracticaCSVI objeto_clase = EjerciciosPracticaCSVI();
  objeto_clase.ClaveCorrecta();
}
