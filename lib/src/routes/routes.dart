import 'package:curso_flutter/src/pages/card_pages.dart';
import 'package:flutter/material.dart';

import 'package:curso_flutter/src/pages/alert_page.dart';
import 'package:curso_flutter/src/pages/avatar_page.dart';
import 'package:curso_flutter/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes(){

  return  <String, WidgetBuilder>{
        '/'     : ( BuildContext context ) => HomePage(),
        'alert' : ( BuildContext context ) => AlertPage(),
        'avatar': ( BuildContext context ) => AvatarPage(),
        'card' : ( BuildContext context ) => CardPage(),
  };

}

