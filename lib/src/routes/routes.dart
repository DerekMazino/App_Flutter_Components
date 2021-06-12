import 'package:flutter/material.dart';

import 'package:app_flutter_components/src/pages/alert_page.dart';
import 'package:app_flutter_components/src/pages/avatar_page.dart';
import 'package:app_flutter_components/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes(){

  final rutas = <String, WidgetBuilder>{
          '/': (BuildContext context) => HomePage(),
          'alert': (BuildContext context) => AlertPage(),
          'avatar': (BuildContext context) => AvatarPage(),
  };
  return rutas;
}
