import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class showStudent extends StatefulWidget {
  @override
  _showStudentState createState() => _showStudentState();
}

class _showStudentState extends State<showStudent> {
  Map items;
  Map data;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    items = data['items'];
    return Scaffold(
      backgroundColor: Hexcolor('#4F6F8F'),
      appBar: AppBar(
        backgroundColor: Hexcolor('#1B3B59'),
        title: Text(items[0]['name']),
      ),
//      body: Builder(
//          builder: (context) => Column(
//                children: <Widget>[
//                  Text('Nothing'),
//                ],
//              )),
    );
  }
}
