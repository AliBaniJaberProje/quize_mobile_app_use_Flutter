import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class question extends StatelessWidget {
  String question_data ;
  question(this.question_data);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      width: double.infinity,
      child: Text(question_data,style:TextStyle(fontSize: 28),
                          textAlign:TextAlign.center,
                          ),);

  }
}