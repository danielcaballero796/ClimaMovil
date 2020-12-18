//asyn transforma una funcion en una tarea asincrona
//no se pueden hacer constructures asincronos por regla
//await esperar por una tarea
void main() async {
  print('Estamos a punto de pedir datos');

  String data = await httpGet('https://api.nasa.com/aliens');

  print(data);

  print('Ultima línea');
}

Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 4), () {
    return 'Hola Mundo';
  });
}
