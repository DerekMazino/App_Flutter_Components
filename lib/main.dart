import 'package:flutter/material.dart';

import 'package:app_flutter_components/src/pages/alert_page.dart';
import 'package:app_flutter_components/src/pages/avatar_page.dart';
//Mis imports
import 'src/pages/home_page.dart';
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
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
      },
    );
  }
}