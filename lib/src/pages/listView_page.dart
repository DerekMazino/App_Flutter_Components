import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {

  @override
_ListViewPageState createState() => _ListViewPageState();}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _listaNumeros = [];
  int _ultimoItem = 0;
  ScrollController _scrollController =  ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregar10();
    _scrollController.addListener(() {
      //Preguntar si el scroll esta en la posición maxima posible
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        _agregar10();
      }
    });
  }
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
      controller: _scrollController,
      itemBuilder: (BuildContext context, int index){
        final imagen = _listaNumeros[index];
        return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://picsum.photos/500/300/?image=$imagen')
        );
      },
    );
  }

  void _agregar10(){
    for(var i = 1; i <= 10; i++){
      _ultimoItem ++;
      _listaNumeros.add(_ultimoItem);
    }
    setState(() {
      
    });
  }
}