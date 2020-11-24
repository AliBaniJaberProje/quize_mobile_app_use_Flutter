import 'package:flutter/material.dart';
import 'package:flutter_app_ali/question.dart' as UI;
// void main()
// {
//     runApp(MyApp());

// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }


}
class MyAppState extends State<MyApp>{
  int _indexQuestion=0;

  void _answerQuestion()
  {
    print('Answer chosen ! ');

    setState(() {
      _indexQuestion=_indexQuestion+1;
      if(_indexQuestion==3){
        _indexQuestion=0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'what\'s your favorite color ?',
      'what\'s your favorite animale  ?',
      'what\'s your favorite color wwwww ?',
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('UI/UX Quize'),
        ),
        body: Column(
          children: [
            UI.question(question.elementAt(_indexQuestion)),
            RaisedButton(child: Text('Answer 1 '), onPressed:_answerQuestion),
            RaisedButton(child: Text('Answer 2'), onPressed:_answerQuestion ),
            RaisedButton(child: Text('Answer 3 '), onPressed:_answerQuestion ),
            RaisedButton(child: Text('Answer 4 '), onPressed:_answerQuestion ),
          ],
        ),
      ),
    );

    /// this class  provid form material.dart file
  }
}

class MyBody extends Widget {
  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }
}
