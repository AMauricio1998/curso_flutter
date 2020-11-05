
//import 'package:curso_flutter/src/pages/home_page.dart';
import 'package:curso_flutter/src/routes/routes.dart';
//import 'package:curso_flutter/src/pages/home_temp.dart';
import 'package:flutter/material.dart';
import 'package:curso_flutter/src/pages/alert_page.dart';
//import 'package:curso_flutter/src/pages/avatar_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ){

        print('Ruta llamada: ${ settings.name }' );

        return MaterialPageRoute(

          builder: (BuildContext context ) => AlertPage()
        );

      },

    );
  }
}