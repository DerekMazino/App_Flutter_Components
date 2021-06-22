import 'package:flutter/material.dart';

import 'dart:async';

class ListViewPage extends StatefulWidget {

  @override
_ListViewPageState createState() => _ListViewPageState();}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _listaNumeros = [];
  int _ultimoItem = 0;
  ScrollController _scrollController =  ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregar10();
    _scrollController.addListener(() {
      //Preguntar si el scroll esta en la posición maxima posible
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        _fetchData();
      }
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Builder'),),
      body: Stack(
        children: [
          _crearLista(),
          _crearLoading()
        ],
      )
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
  Future _fetchData() async{
    _isLoading = true;
    setState(() {
      
    });
    final duracion = Duration(seconds: 2);
    return new Timer(duracion, respuestaHTTP);
  }
  void respuestaHTTP(){
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250)
    );
    _agregar10();
  }

  Widget _crearLoading(){
    if(_isLoading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 15.0)
          
        ],
      );
    }
    return Container();
  }
}