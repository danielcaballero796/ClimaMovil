import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  //lista
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];
  @override
  Widget build(BuildContext context) {
    //container page
    return Scaffold(
      appBar: AppBar(title: Text('Components Temp')),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  /* Forma de Crear una lista de items
  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      //forma para meter mas de una cosa en una lista
      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Color(0xFF42A5F5),
          height: 5.0,
          thickness: 3.0,
        ));
    }
    return lista;
  }*/

  // Forma Corta de crear items
  List<Widget> _crearItemsCorta() {
    // se retorna la lista que se convierte a Widget
    return opciones.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e),
            subtitle: Text('SbuTitle'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(
            color: Color(0xFF42A5F5),
            height: 5.0,
            thickness: 3.0,
          ),
        ],
      );
    }).toList();
  }
}
