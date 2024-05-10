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
        child: IconButton(
          icon: Container(
            child: Text('Option'),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Card(
            color: Colors.blue,
            child: Text('Who was the fist Programmer'),
            margin: EdgeInsets.all(100.0),
          ),
          buildOptionRow(),
          buildOptionRow(),
        ],
      ),
    );
  }
}
