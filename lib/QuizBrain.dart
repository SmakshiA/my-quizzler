import 'Question.dart';

class QuizBrain{

  int _questNumber=0;

  List<Question> _questions = [
    Question('Who was the first programmer of the world ?', 'Ada Lovelace',
        ['Charles Babbage', 'Ada Lovelace', 'Dennis Ritchie', 'Bill Gates']),
    Question(
        'How many heading tags are used in HTML ?', '6', ['1', '6', '4', '10']),
    Question('Which language is used for Flutter Development ?', 'Dart',
        ['Python', 'Java', 'Kotlin', 'Dart']),
    Question('Which company developed Flutter?', 'Google',
        ['Google', 'RedHat', 'Microsoft', 'Meta']),
    Question('When is national technology day celebrated ?', '11th May',
        ['1st June', '5th April', '11th May', '20th February'])
  ];

  //using getters and setters
  Question getQuestion(int idx){
    return _questions[idx];
  }

  void setQuestNumber(){
    if(_questNumber<4){
      _questNumber++;
    }
    else{
      _questNumber=0;
    }
  }

  int getQuestNumber(){
    return _questNumber;
  }
}