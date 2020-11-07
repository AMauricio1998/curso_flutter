
//import 'package:curso_flutter/src/pages/home_page.dart';
import 'package:curso_flutter/src/routes/routes.dart';
//import 'package:curso_flutter/src/pages/home_temp.dart';
import 'package:flutter/material.dart';
import 'package:curso_flutter/src/pages/alert_page.dart';
//import 'package:curso_flutter/src/pages/avatar_page.dart';
 import 'package:flutter_localizations/flutter_localizations.dart';




void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
   GlobalMaterialLocalizations.delegate,
   GlobalWidgetsLocalizations.delegate,
   GlobalCupertinoLocalizations.delegate,
 ],
 supportedLocales: [
    const Locale('en', ''), // English, no country code
    const Locale('es', 'ES'), 
    const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
    // ... other locales the app supports
  ],
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