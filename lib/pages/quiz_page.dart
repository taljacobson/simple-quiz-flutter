import 'package:flutter/material.dart';
import '../utils/question.dart';
import '../utils/quiz.dart';
import '../ui/answer_button.dart';
import '../ui/question_text.dart';
import '../ui/answer_overlay.dart';
class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {

  Question currentQuestion;
  Quiz quiz = new Quiz([    
    new Question('is Elan Musk Human', false),
    new Question('is Pizza Healthy', true),
    new Question('is the world Flat', false),
    new Question('have Humans landed on the Moon', true),
    ]
  );

  String questionText;
  int questionNumber;
  bool isCorrect;
  bool overLayVisiable = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }

  void _handleAnswer(bool answer) {
    isCorrect = (currentQuestion.answer == answer);
    
    print( isCorrect);
    quiz.answer(isCorrect);
    this.setState(()  { 
      overLayVisiable = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          // main Page
          children: <Widget>[
            new AnswerButton(true, () => this._handleAnswer(true)),
            new QuestionText(questionText, questionNumber),
            new AnswerButton(false, () => this._handleAnswer(false))
          ],
        ),
        overLayVisiable ? new AnswerOverlay(isCorrect): new Container(),
      ],
    );
  }


}
