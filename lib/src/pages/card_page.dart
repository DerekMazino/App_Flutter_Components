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
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
        ],
        padding: EdgeInsets.all(10.0),
      ),
      
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 20.0,//Proyección de la Sombra
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),//Borde de la card
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

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,//Hace que nada de lo que este en la tarjeta se salga de ella
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),//Borde circular
      child: Column(children: [
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          fadeInDuration: Duration(
            milliseconds: 200,
          ),
          height: 300.0,
          fit: BoxFit.cover, //Como la imgen debe ocupar el espacio que tiene
          image: NetworkImage('https://images.pexels.com/photos/934718/pexels-photo-934718.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
        ),
        Container(
          child: Text('Usando clipBehavior'),
          padding: EdgeInsets.all(10.0),
        )
      ],),
    );
  }

}