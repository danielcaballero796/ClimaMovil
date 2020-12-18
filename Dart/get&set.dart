void main() {
  final cuadrado = new Cuadrado();
  cuadrado.lado = 10;

  print(cuadrado.area);
}

class Cuadrado {
  //con _ se ponen como private
  double _lado;
  //double _area;

  set lado(double valor) {
    if (valor <= 0) {
      throw ('El lado no puede ser menor o igual a cero');
    }
    _lado = valor;
  }

  double get area => _lado * _lado;

  toString() => 'Lado: $_lado';
}
