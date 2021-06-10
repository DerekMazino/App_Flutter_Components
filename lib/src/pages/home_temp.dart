import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        children: _crearItemsCorto(),
      ),
    );
  }

  //Crear una lista de widgets
  List<Widget> _crearItems(){

    List<Widget> lista = [];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      //Agregando elementos usando el operador de cascada
      lista..add(tempWidget)
          ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorto(){
  return opciones.map((item) => Column(children: [
    ListTile(
      title: Text(item + '!' ),
      subtitle: Text('Cualquier Cosa'),
      leading: Icon(Icons.access_alarms),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){},
    ),
    Divider()
  ],)).toList();
  }
}

