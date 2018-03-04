import 'package:flutter/material.dart';
import 'dart:math';

class AnswerOverlay extends StatefulWidget {
  final VoidCallback _onTap;
  final bool _isCorrect;

  AnswerOverlay(this._isCorrect, this._onTap);

  @override
  State<StatefulWidget> createState() => new AnswerOverlayState();
}

class AnswerOverlayState extends State<AnswerOverlay>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnim;
  AnimationController _iconAnimController;

  @override
  void initState() {
    super.initState();

    _iconAnimController = new AnimationController(
        duration: new Duration(seconds: 2), vsync: this);
    _iconAnim = new CurvedAnimation(
        parent: _iconAnimController, curve: Curves.elasticOut);
    _iconAnim.addListener(() => this.setState(() => {}));
    _iconAnimController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _iconAnimController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.black54,
      child: new InkWell(
        onTap: widget._onTap,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: new Transform.rotate(
                  angle: _iconAnim.value * 2 * PI,
                  child: new Icon(
                    widget._isCorrect == true ? Icons.done : Icons.clear,
                    size: _iconAnim.value * 80.0,
                  )),
            ),
            new Padding(
              padding: new EdgeInsets.only(
                bottom: _iconAnim.value * 20.0,
              ),
            ),
            new Text(
              widget._isCorrect == true ? 'Correct' : 'Wrong',
              style: new TextStyle(
                  color: Colors.white, fontSize: _iconAnim.value * 50.0),
            )
          ],
        ),
      ),
    );
  }
}
