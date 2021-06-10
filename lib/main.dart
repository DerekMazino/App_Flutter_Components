import 'package:flutter/material.dart';

//Mis imports
import 'package:app_flutter_components/src/pages/home_temp.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compontes App',
      debugShowCheckedModeBanner: false,
      home: HomeTemp()
    );
  }
}