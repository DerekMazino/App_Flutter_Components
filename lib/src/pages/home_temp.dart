import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('List title')
          ),
          Divider(),//Genera una linea como división entre items de la lista
          ListTile(
            title: Text('List title')
          ),
        ],
      ),
    );
  }
}