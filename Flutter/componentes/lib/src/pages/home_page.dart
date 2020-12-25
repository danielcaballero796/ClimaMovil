import 'package:flutter/material.dart';
//my imports
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Components Temp')),
      body: _lista(),
    );
  }

  Widget _lista() {
    //menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listaItems(snapshot.data, context));
      },
    );

    /*return ListView(
      children: _listaItems(),
    );*/
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          //rutas definidas
          //final route = MaterialPageRoute(builder: (context) => AlertPage());
          //Navigator.push(context, route);

          Navigator.pushNamed(context, opt['ruta']); //rutas con nombre
        },
      );

      opciones
        ..add(widgetTemp)
        ..add(Divider(
          color: Color(0xFF42A5F5),
          height: 5.0,
          thickness: 3.0,
        ));
    });

    return opciones;
  }
}
