void main() {
  final wolverine = new Heroe(nombre: 'Logan', poder: 'Regeneracion');
  final profesor = new Heroe();
  print(wolverine);
  print(profesor.toString2());
}

class Heroe {
  //String nombre, poder;//se puede declarar como Java

  String nombre;
  String poder; //se puede declarar como Java

  /*Constructor definiendo que debe pasar usando {}
  Heroe({String nombre, String poder}) {
    this.nombre = nombre;
    this.poder = poder;
  }*/

  //otra forma de hacer constructor
  //Heroe({this.nombre,this.poder});

  //se puede crear con parametros default
  Heroe({String nombre = 'Sin Nombre', String poder = 'Sin Poder'}) {
    this.nombre = nombre;
    this.poder = poder;
  }

  String toString() {
    return '${this.nombre} - ${this.poder}';
  }

  String toString2() => 'Nombre: ${this.nombre} \n Poder: ${this.poder}';
}
