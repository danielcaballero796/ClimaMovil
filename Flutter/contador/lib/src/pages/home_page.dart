import 'package:flutter/material.dart';
//my imports

class HomePage extends StatelessWidget {
  //variable final estiloTexto
  final estiloTexto = TextStyle(fontSize: 25);
  final conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //container
      appBar: AppBar(
        //para centrar el titulo
        centerTitle: true,
        //titulo del container
        title: Text('Titulo'),
      ),
      body: Center(
        //text en el body del container
        child: Column(
          //column se usa para organizar los textos en un array de columnas
          mainAxisAlignment: MainAxisAlignment.center, //para centrar las col
          children: [
            Text('Numero de clicks en el boton', style: estiloTexto),
            Text('$conteo', style: estiloTexto),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.done_all),
          onPressed: () {
            //recibe una funcion
            print('Hola desde el botón');
          }),
    );
  }
}
