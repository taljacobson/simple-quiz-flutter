import 'package:flutter/material.dart';
import 'landing_page.dart';

class ScorePage extends StatelessWidget {

  final int _score;
  final int _total_Questions;

  ScorePage(this._score, this._total_Questions);

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Material(
      color: Colors.blueAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('your Score', style: new TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),),
          new Text(_score.toString() + '/' + _total_Questions.toString(), style: new TextStyle(color: Colors.white, fontSize: 80.0, fontWeight: FontWeight.bold)),
          new IconButton(
            icon: new Icon(Icons.arrow_right, color: Colors.white, size: 50.0,),
            color: Colors.white,
            iconSize: 50.0,
            onPressed: () => 
              Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new LandingPage()),(Route route) => route == null ),
                
            )
          
        ],
      ),
      );
    }
}