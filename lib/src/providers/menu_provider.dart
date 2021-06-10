
import 'package:flutter/services.dart' show rootBundle;//Para leer JSON


class _MenuProvider{

  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

  cargarData() {
    //Retorna un Future, por lo tanto usamos then
    rootBundle.loadString('data/menu_opts.json')
    .then((data) {
      print(data);
    });

  }

  
}

final menuProvider = _MenuProvider();