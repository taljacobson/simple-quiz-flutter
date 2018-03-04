import 'package:flutter/material.dart';
import '../utils/question.dart';
import '../utils/quiz.dart';
import '../ui/answer_button.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          // main Page
          children: <Widget>[
            new AnswerButton(
               true, 
               () => print('you picked True')
            ),
            new AnswerButton(
               false, 
               () => print('you picked False')
            )
          ],
        ),
      ],
    );
  }
}
