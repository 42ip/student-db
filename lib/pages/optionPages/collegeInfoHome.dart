import 'dart:convert';
import 'package:hexcolor/hexcolor.dart';
import 'package:StudentProject/model/Branch.dart';
import 'package:flutter/material.dart';

class collegeInfo extends StatefulWidget {
  @override
  _collegeInfoState createState() => _collegeInfoState();
}

class _collegeInfoState extends State<collegeInfo> {
  List<Branch> items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#4F6F8F'),
      appBar: AppBar(
        backgroundColor: Hexcolor('#1B3B59'),
        title: Text('this is the branch home page'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Hexcolor('#224C73'),
                onPressed: () {
                  Navigator.pushNamed(context, '/getStudentById');
                },
                child: Text('get Student by ID ',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Hexcolor('#224C73'),
                onPressed: () {},
                child: Text('get Exams by ID',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
