import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final bool answer;
  final VoidCallback _onTap;
  const AnswerButton(
    this.answer, 
    this._onTap
    );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Expanded(
      child: new Material(
        color: answer ? Colors.greenAccent : Colors.redAccent,
        child: new InkWell(
          onTap: _onTap,
          child: new Center(
            child: new Container(
              child: new Text(answer.toString().toUpperCase()),
            ),
          ),
        ),
      ),
    );
  }
}
