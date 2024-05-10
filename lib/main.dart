import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Quizzler'),
      ),
      body: SafeArea(
        child: QuizPage(


        ),
      ),
      backgroundColor: Colors.white,
    ),
  ));
}


class QuizPage extends StatefulWidget {
  const QuizPage({super.key});


  @override
  State<QuizPage> createState() => _QuizPageState();
}


class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(


      ),
    );
  }
}
