import 'package:flutter/material.dart';


class CardPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
        ),
        body: ListView(
         padding: EdgeInsets.all(20), //Margenes 
        // padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),//Con cordenadas
          children: <Widget>[
            _cardTipo1(),
            SizedBox( height: 30.0),
            _cardTipo2(),
            SizedBox( height: 30.0),
            _cardTipo1(),
            SizedBox( height: 30.0),
            _cardTipo2(),
            SizedBox( height: 30.0),
            _cardTipo1(),
            SizedBox( height: 30.0),
            _cardTipo2(),
            SizedBox( height: 30.0),
            _cardTipo1(),
            SizedBox( height: 30.0),
            _cardTipo2(),
            SizedBox( height: 30.0),
            _cardTipo1(),
            SizedBox( height: 30.0),
            _cardTipo2(),
            SizedBox( height: 30.0),
            _cardTipo1(),
            SizedBox( height: 30.0),
            _cardTipo2(),
            SizedBox( height: 30.0),
            
            
          ],
        ),
      );
      
  }

  _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aqui estamos creando la primera tarjeta de este curso de flutter, esto es un ejemplod de lo que podemos hacer dentro de nuestra app'),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: (){},
            ),
             FlatButton(
              child: Text('Ok'),
              onPressed: (){},
            )
            ],
          )
        ],
      ),
    );

  }

Widget _cardTipo2(){

  final card = Container(
    //return Card(
    //clipBehavior: Clip.antiAlias, permite que nada salga del contenedor
    child: Column(
      children: <Widget>[

        FadeInImage(
                  image: NetworkImage('https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/130238819/original/d4096d4950eba421600f21c6c753c19375222eb6/draw-you-a-landscape-image-with-ms-paint.png'),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  fadeInDuration: Duration( milliseconds: 200),
                  height: 300.0,
                  fit: BoxFit.cover,
        ),

        //Image(
         // image: NetworkImage('https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/130238819/original/d4096d4950eba421600f21c6c753c19375222eb6/draw-you-a-landscape-image-with-ms-paint.png'),

       // ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('No tengo idea de que poner')
          )
      ],
    ),
  );

  return  Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0)//Horientacion de la sombra
        )
      ]
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    ),
  );

}
}