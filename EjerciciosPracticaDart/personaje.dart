/*
 *
 
Ejercicio 1: Información de un Personaje de Videojuego
Enunciado: Escribe un programa que almacene

name(nombre del personaje, tipo )String
level(nivel del personaje,int)
isHero(indica si el personaje es un héroe, tipo )bool
abilities(lista de habilidades del personaje, tipo )List<String>
errorMessage(mensaje de error en caso de que falte información, tipo )String
Imprime toda la información en un mensaje

*/

import 'dart:io';

class Personaje {
  String name = '';
  int level = 0;
  bool isHero = false;
  List<String> abilities = [];
  String errorMessage = '';

  void assignCharacterInfo(
    String name,
    int level,
    bool isHero,
    List<String> abilities,
  ) {
    if (name.isEmpty || level < 0 || abilities.isEmpty) {
      this.errorMessage = "Error, información del personaje incompleta.";
      print(this.errorMessage);
      //exit(1);
    }

    this.name = name;
    this.level = level;
    this.isHero = isHero;
    this.abilities = abilities;
  }

  void printCharacterInfo() {
    dynamic character_info = {
      'Name': this.name,
      'Level': this.level,
      'isHero?': this.isHero,
      'Abilities': this.abilities,
      'ErrorMessage': this.errorMessage,
    };

    print(character_info);
  }
}

void main() {
  Personaje personaje = new Personaje();

  //Creación personaje válida.
  personaje.assignCharacterInfo("Superman", 50, true, [
    'Volar',
    'Super Fuerza',
    'Super Velocidad',
  ]);
  personaje.printCharacterInfo();

  //Creación personaje inválida:
  personaje.assignCharacterInfo("Batman", -12, true, [
    'Habilidad A',
    'Habilidad B',
  ]);
  personaje.printCharacterInfo();

  //Creación personaje inválida:
  personaje.assignCharacterInfo("HeroeC", -12, true, []);
  personaje.printCharacterInfo();
}
