
import 'package:app_flutter_components/src/pages/alert_page.dart';
import 'package:flutter/material.dart';

import '../providers/menu_provider.dart';
import 'package:app_flutter_components/src/utils/icon_string_util.dart';
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
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(data, BuildContext context) {

    final List<Widget> opciones = [];
    
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading:  getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){

          Navigator.pushNamed(context, opt['ruta']);
          /* final route = MaterialPageRoute(
            builder: (context) {
              return AlertPage();
            }
          );
          Navigator.push(context, route); */

        },
    );
    opciones..add(widgetTemp)
            ..add(Divider());
    });  
    return opciones;
  }
}