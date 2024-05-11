import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        backgroundColor: Colors.blue,
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

  //build Option row
  Row buildOptionRow() {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildOption(),
        buildOption(),
      ],
    );
  }

  // build a button
  Expanded buildOption() {
    return Expanded(
      child: Card(
        color: Colors.pinkAccent.shade100,
        child: IconButton(
          icon: Container(
            child: Text('Option'),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Expanded buildQuestionCard(){
    return Expanded(
      flex: 2,
      child: Card(
        color: Colors.blue.shade400,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            'Who was the first Programmer?',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.white
            ),
          ),
        ),
        margin: EdgeInsets.all(20.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          buildQuestionCard(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    children: [
                      buildOptionRow(),
                      buildOptionRow(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 35.0,
                      ),
                      Icon(
                        Icons.close,
                        color: Colors.red,
                        size: 35.0,
                      ),
                    ],
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
