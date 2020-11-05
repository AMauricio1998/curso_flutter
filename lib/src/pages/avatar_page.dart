import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
            backgroundImage: NetworkImage('https://img.etimg.com/thumb/width-1200,height-900,imgsize-252561,resizemode-1,msid-59965878/magazines/panache/chester-benningtons-exploding-emotions-brought-life-to-linkin-park-classics.jpg'),
            radius: 25.0,
            ),
          ),


          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://mariskalrock.com/wp-content/uploads/2017/06/Linkin-Park-Download-Madrid-2017.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200 ), 
        ),
      ),

    );
  }
}