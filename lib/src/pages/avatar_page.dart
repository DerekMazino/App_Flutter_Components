import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
            ),
            padding: EdgeInsets.all(2),
          ),
          Container(
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
            margin: EdgeInsets.only(right: 10.0),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://images.pexels.com/photos/688660/pexels-photo-688660.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}