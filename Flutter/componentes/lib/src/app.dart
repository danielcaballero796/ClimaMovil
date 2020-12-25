
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//my imports
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false, //quita el banner de debug
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en','US'),//English
        const Locale('es','ES'),//Spanish
      ],
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta ${settings.name}');
        //ruta por defauld si no la encuentra en el mapa de routes
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}
