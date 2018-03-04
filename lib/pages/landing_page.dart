import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.greenAccent,
      child: new InkWell(
        onTap: () => print('we tapped the page'),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            new Text('lets Quiz', style: new TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),),
            new Text('Tap to Start', style: new TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}