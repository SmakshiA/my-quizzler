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
      child: Column(children: [
        Expanded(
          child: Card(
            color: Colors.blue,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                  'Who was the fist Programmer',
                textAlign: TextAlign.center,
                style: TextStyle(

                ),
              ),
            ),
            margin: EdgeInsets.all(20.0),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child : Column(
                  children: [
                    buildOptionRow(),
                    buildOptionRow(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.check,
                    ),
                    Icon(
                        Icons.close
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Card(
// color: Colors.blue,
// child: Text('Who was the fist Programmer'),
// margin: EdgeInsets.all(20.0),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// children: [
// buildOptionRow(),
// buildOptionRow(),
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
// Icon(
// Icons.check,
// ),
// Icon(
// Icons.close
// )
// ],
// ),
// )
// ],
// ),
