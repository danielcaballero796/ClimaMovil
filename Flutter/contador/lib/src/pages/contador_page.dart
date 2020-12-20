import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = TextStyle(fontSize: 25);
  int _conteo = 0;

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
            Text('Numero de clicks en el boton', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }

//Creacion de Botones
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //para centrar las col
      children: [
        SizedBox(width: 5.0), //para la separacion de los botones
        //Boton para resetear a 0
        FloatingActionButton(child: Icon(Icons.refresh), onPressed: _reset),
        Expanded(child: SizedBox(width: 5.0)), //expanded estira lo mas posible
        //Boton para Restar
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        Expanded(child: SizedBox(width: 5.0)),
        //Boton de Sumar
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
        SizedBox(width: 5.0),
      ],
    );
  }

  void _agregar() {
    //ejecuta una funcion para redibujar los cambios
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo=0);
  }
}
