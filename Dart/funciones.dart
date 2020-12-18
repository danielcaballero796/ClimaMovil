void main() {
  String sms = saludar();
  print(sms);

  print(datos(edad: 24, nombre: "Daniel"));
}

String saludar() {
  return 'Hola';
}

//funcion normal con parametros
String saludo(String nombre) {
  return 'Hola $nombre';
}

//puede dejar libre el order de como recibe las variables
String datos({String nombre, int edad}) {
  return 'Nombre: $nombre, Edad: $edad';
}

//funcion flecha como JS
String saludo2(String nombre) => 'Hola $nombre';
