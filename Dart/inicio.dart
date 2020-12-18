void main() {
  //------------numeros------------
  int empleados = 7;
  print('El número de empleados es: $empleados');

  double pi = 3.141592;
  print('El valor de Pi es: $pi');

  //------------cadenas------------
  String nombre = 'Daniel';
  print('Hola $nombre');
  print(nombre[0]); //primera letra
  print(nombre[nombre.length - 1]); //ultima letra

  //------------boleans------------
  bool activado = true;
  print(activado);

  (activado) ? print('Activo') : print('Inactivo');

  //------------Listas------------
  List numeros = [1, 2, 3, 4, 5]; //Lista dinamica
  print(numeros);

  numeros.add(6);
  print(numeros);

  List<int> positivos = [1, 2, 3, 4, 5]; //Lista solo numeros
  print(positivos);

  List masNumeros = List(10); //Lista Tamaño fijo
  masNumeros[0] = 1;
  print(masNumeros);

  //------------Map------------
  //aceptaria lo que se quisiera
  Map algo = {
    'nombre': 'Daniel',
    'edad': '24',
    'nacionalidad': 'Colombiano',
  };

  print(algo);

  //se define el tipo de info
  Map<String, dynamic> persona = {
    'nombre': 'Daniel',
    'edad': '24',
    'nacionalidad': 'Colombiano',
  };

  print(persona['nombre']);
  //se añade otra propiedad al map
  persona.addAll({'RedesSociales': true});
  print(persona);
}
