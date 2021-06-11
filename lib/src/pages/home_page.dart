import 'package:flutter/material.dart';

import '../providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    //Retorna un Future, por lo tanto se usa then
    //Future tiene 3 estados, Solicitando información, Cuando se resuelve o cuando da un error
    return FutureBuilder(
      future: menuProvider.cargarData(),  //El Future
      initialData: [], //Información que mostrara por defecto mientras no se ha resuelto el Future
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
  
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(data) {

    final List<Widget> opciones = [];
    
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading:  Icon(Icons.ac_unit, color: Colors.blue,),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
        onTap: (){},
    );
    opciones..add(widgetTemp)
            ..add(Divider());
    });  
    return opciones;
  }
}