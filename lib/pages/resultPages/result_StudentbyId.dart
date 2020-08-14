import 'dart:js';
import 'package:StudentProject/model/Student.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class showStudent extends StatefulWidget {
  @override
  _showStudentState createState() => _showStudentState();
}

class _showStudentState extends State<showStudent> {
  List<Student> items;
  Map data;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Hexcolor('#4F6F8F'),
      appBar: AppBar(
        backgroundColor: Hexcolor('#1B3B59'),
//        title: Text('${Student.Name}'),
      ),
      body: Builder(
        builder: (context) => Column(
          children: <Widget>[
            Text('Nothing'),
          ],
        )
      ),
    );
  }
}
