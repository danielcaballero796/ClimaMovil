void main() {
  final superman = new Heroe();
  superman.nombre = 'Clark Kent';

  final lex = new Villano();
  lex.nombre = 'Lex Luthor';
}

abstract class Personaje {
  String nombre;
  String poder;
}

class Heroe extends Personaje {
  String valentia;
}

class Villano extends Personaje {
  String maldad;
}
