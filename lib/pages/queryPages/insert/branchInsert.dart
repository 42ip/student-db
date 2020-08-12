import 'dart:convert';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:validators/validators.dart';

class branchInsert extends StatefulWidget {
  @override
  _branchInsertState createState() => _branchInsertState();
}

class _branchInsertState extends State<branchInsert> {
  final _courseController = TextEditingController();
  final _courseIDController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#4F6F8F'),
      appBar: AppBar(
        backgroundColor: Hexcolor('#1B3B59'),
        title: Text('change this'),
      ),
      body: Builder(
        builder: (context) => Column(
          children: [
            TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              controller: _courseController,
              decoration: const InputDecoration(
                hintText: 'Enter the course',
                hintStyle: TextStyle(color: Colors.white),
              ),
              validator: (value) {
                if (isAlpha(value)) return "true";
                return "false";
              },
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              controller: _courseIDController,
              decoration: const InputDecoration(
                hintText: 'Enter the course ID',
                hintStyle: TextStyle(color: Colors.white),
              ),
              validator: (value) {
                if (isAlphanumeric(value)) return "true";
                return "false";
              },
            ),
            RaisedButton(
              color: Hexcolor('#224C73'),
              onPressed: () {
                _performInsert();
                final snackbar = SnackBar(
                  backgroundColor: Hexcolor('#1B3B59'),
                  content: Text('${_courseController.text} has been added.'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Code that is to be added later
                    },
                  ),
                );
                Scaffold.of(context).showSnackBar(snackbar);
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _performInsert() async {
    String course = _courseController.text;
    String courseId = _courseIDController.text;
    Map data = {'course': course, 'courseId': courseId};
    String body = json.encode(data);
    var client = http.Client();
    var uriResponse = await client.post('http://34.224.4.55:8080/addBranch',
        headers: {"Content-Type": "application/json"}, body: body);
    print(uriResponse.body);
//    SnackBar(
//      backgroundColor: Hexcolor('#1B3B59'),
//      content: Text('$_courseController has been added.'),
//    );
  }
}
