import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        children: [
          _cardTipo1()
        ],
        padding: EdgeInsets.all(10.0),
      ),
      
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titlo de esta tarjeta'),
            subtitle: Text('Aqui estamos con la descripcion de la tareja que quiero que ustedes vean para que tengan una idea de lo que quiero mostrarles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            //Text Button replaza a Flat Button
            TextButton(onPressed: (){} , child: Text('Cancelar')),
            TextButton(onPressed: (){} , child: Text('Ok'))
          ],)
        ],
      ),
    );
  }
}