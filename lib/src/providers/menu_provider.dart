
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;//Para leer JSON


class _MenuProvider{

  List<dynamic> opciones = [];

  _MenuProvider() {
    //cargarData();
  }

  Future<List<dynamic>> cargarData() async{
    //Retorna un Future, por lo tanto usamos then
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    print(dataMap['rutas']);
    opciones = dataMap['rutas'];
    return opciones;
  }

  
}

final menuProvider = _MenuProvider();