import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final bool _answer;
  final VoidCallback _onTap;
  const AnswerButton(
    this._answer, 
    this._onTap
    );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Expanded(
      child: new Material(
        color: _answer ? Colors.greenAccent : Colors.redAccent,
        child: new InkWell(
          onTap: _onTap,
          child: new Center(
            child: new Container(
              padding: new EdgeInsets.all(20.0),
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.white, width: 5.0)
              ),
              child: new Text(
                _answer.toString().toUpperCase()
                ,style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
            ),
          ),
        ),
      ),
    );
  }
}
