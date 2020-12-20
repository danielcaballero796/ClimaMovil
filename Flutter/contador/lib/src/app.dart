import 'package:flutter/material.dart';
//my imports
//import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/contador_page.dart';

/*
widgets son clases comunes y corrientes deben extender de 
StatelessWidget o StatefulWidget
*/
class MyApp extends StatelessWidget {
  /* crear el metodo build()
  el context contiene la info del arbol de widgets sabe quien es padre,
  nieto,bisnieto el return debe ser un Widget*/
  @override
  Widget build(context) {
    //Docs https://api.flutter.dev/flutter/material/MaterialApp-class.html#constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quita el banner de debug
      home: Center(
        //widget center para centrar a su hijo
        //child: HomePage(), //clase Home
        child: ContadorPage(), //clase Contador
      ),
    ); //se retorna el widget
  }
}
