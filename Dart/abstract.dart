void main(List<String> args) {
  final perro = new Perro();
  perro.emitirSonido();

  final gato = new Gato();
  gato.emitirSonido();
}

/*nos ayudan a que las clases que la implementen 
deban usar sus metodos y atributos*/
abstract class Animal {
  int patas;
  void emitirSonido();
}

class Perro implements Animal {
  int patas;

  void emitirSonido() => print('Guauuu');
}

class Gato implements Animal {
  int patas;

  void emitirSonido() => print('Miauuu');
}
