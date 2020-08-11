import 'dart:convert';

import 'package:StudentProject/model/Branch.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class collegeInfo extends StatefulWidget {
  @override
  _collegeInfoState createState() => _collegeInfoState();
}

class _collegeInfoState extends State<collegeInfo> {
  List<Branch> items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('this is the branch home page'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                child:
                    Text('get Student by ID ', style: TextStyle(fontSize: 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('getExamsbyID', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
