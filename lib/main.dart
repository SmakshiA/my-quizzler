import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizzler/Question.dart';
import 'package:quizzler/QuizBrain.dart';

QuizBrain quizBrain = new QuizBrain();

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quizzler',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'BriemHand',
              color: Colors.blue.shade900,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade50,
        ),
        body: SafeArea(
          child: QuizPage(),
        ),
        backgroundColor: Colors.blue.shade50,
      ),
    ),
  );
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Icon> scoreKeeper = [];

  Expanded buildQuestionCard(String question) {
    return Expanded(
      flex: 2,
      child: Card(
        color: Colors.blue.shade400,
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(20.0),
          child: Text(
            question,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
        ),
        margin: EdgeInsets.all(20.0),
      ),
    );
  }

  //build Option row
  Row buildOptionRow(String op1, String op2) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildOption(op1),
        buildOption(op2),
      ],
    );
  }

  // build a button
  Expanded buildOption(String op) {
    return Expanded(
      child: Card(
        color: Colors.pinkAccent.shade100,
        child: TextButton(
          child: Text(
            op,
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            setState(() {
              String ans = quizBrain.getQuestion(quizBrain.getQuestNumber()).answer;
              if (ans == op) {
                scoreKeeper.add(buildCheckIcon());
              } else {
                scoreKeeper.add(buildCrossIcon());
              }
            });
            if (quizBrain.getQuestNumber()== 4) {
              setState(() {
                _showGameOverDialog();
                // scoreKeeper.removeRange(0, 5);
              });
            }
            quizBrain.setQuestNumber();
          },
        ),
      ),
    );
  }

  //build a check icon
  Icon buildCheckIcon() {
    return Icon(
      Icons.check,
      color: Colors.green,
      size: 37.0,
    );
  }

  //build a cross icon
  Icon buildCrossIcon() {
    return Icon(
      Icons.close,
      color: Colors.red,
      size: 37.0,
    );
  }

  void _showGameOverDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Game Over'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  scoreKeeper.removeRange(0, 5);
                });
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text(
                'Close',
                style: TextStyle(
                  color: Colors.blue.shade900,

                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          buildQuestionCard(quizBrain.getQuestion(quizBrain.getQuestNumber()).question),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    children: [
                      buildOptionRow(
                          quizBrain.getQuestion(quizBrain.getQuestNumber()).options[0], quizBrain.getQuestion(quizBrain.getQuestNumber()).options[1]),
                      buildOptionRow(
                          quizBrain.getQuestion(quizBrain.getQuestNumber()).options[2], quizBrain.getQuestion(quizBrain.getQuestNumber()).options[3]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: scoreKeeper,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
