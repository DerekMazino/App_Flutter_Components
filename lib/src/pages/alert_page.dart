
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20), );
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar Alerta',),
          style: style,
          onPressed: () =>_mostrarAlerta(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit_sharp),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        title: Text('Titulo'),
        content: Column(children: [
          Text('Este es el contenido de la caja de la alerta'),
          FlutterLogo(size: 100)
        ],
        mainAxisSize: MainAxisSize.min,),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Cancelar')),
          TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Ok'))
        ],
      );
    }, barrierDismissible: true);
  }
}