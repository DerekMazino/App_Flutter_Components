import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {

  @override
_ListViewPageState createState() => _ListViewPageState();}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _listaNumeros = [1, 2, 3, 4, 5];
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Builder'),),
      body: _crearLista(),
    );
  }

  Widget _crearLista(){
    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index){
        final imagen = _listaNumeros[index];
        return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://picsum.photos/500/300/?image=$imagen')
        );
      },
    );
  }
}