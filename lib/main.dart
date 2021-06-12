import 'package:flutter/material.dart';

//Mis imports
import 'package:app_flutter_components/src/pages/alert_page.dart';
import 'package:app_flutter_components/src/routes/routes.dart';
//import 'package:app_flutter_components/src/pages/home_temp.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compontes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/', //Indicar la ruta principal
      routes: getAplicationRoutes(),
      //Usamos onGenerateRoute para redirigir a una ventana cuando no tenemos una ruta establecida en la opcion
      onGenerateRoute: (RouteSettings settings){
        //print('Ruta llamada: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}