import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  
  final String _question;
  final int _questionNumber; 

  QuestionText(this._question, this._questionNumber);

  @override
  State<StatefulWidget> createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText> with SingleTickerProviderStateMixin {

  Animation<double> _fontSizeAnimation;
  AnimationController _fontSizeAnimController;

  @override
  void initState() {
    super.initState();

    _fontSizeAnimController = new AnimationController(duration: new Duration(milliseconds: 500), vsync: this);
    _fontSizeAnimation = new CurvedAnimation(parent: _fontSizeAnimController, curve: Curves.linear);
    _fontSizeAnimation.addListener(() => this.setState(() => {}));
    _fontSizeAnimController.forward();
  }

  @override
    void dispose() {
      // TODO: implement dispose
      super.dispose();
      _fontSizeAnimController.dispose();
    }

  @override
    void didUpdateWidget(QuestionText oldWidget) {
      // TODO: implement didUpdateWidget
      super.didUpdateWidget(oldWidget);
      if( oldWidget._question != widget._question){
        _fontSizeAnimController.reset();
        _fontSizeAnimController.forward();
      }
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.white,
      child: new Padding(
        padding: new EdgeInsets.symmetric(vertical: _fontSizeAnimation.value * 20.0),
        child: new Center(
          child: new Text('Statment ${widget._questionNumber.toString()} : ${widget._question}',
          style: new TextStyle(fontSize: _fontSizeAnimation.value * 15)
          ),
        ),
      ),
    );
  }
}
