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
                onPressed: () {
                  Navigator.pushNamed(context, '/getStudentById');
                },
                child: Text('get Student by ID ',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                splashColor: Hexcolor('#4F6F8F'),
                textColor: Colors.white,
                color: Colors.transparent,
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/getExamsById');
                },
                child: Text('get Exams by ID',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                splashColor: Hexcolor('#4F6F8F'),
                textColor: Colors.white,
                color: Colors.transparent,
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
