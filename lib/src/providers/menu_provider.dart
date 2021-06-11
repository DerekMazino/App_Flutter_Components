
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;//Para leer JSON


class _MenuProvider{

  List<dynamic> opciones = [];

  _MenuProvider() {
    //cargarData();
  }
  //Retorna un Future que contiene una lista
  Future<List<dynamic>> cargarData() async{
    //Retorna un Future, se le dice que espere a que se cargue la data antes de hacer el return
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    //print(dataMap['rutas']);
    opciones = dataMap['rutas'];
    return opciones;
  }

  
}

final menuProvider = _MenuProvider();