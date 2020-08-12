import 'dart:convert';

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
      appBar: AppBar(
        title: Text('change this'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _courseController,
            decoration: const InputDecoration(
              hintText: 'Enter the course',
            ),
            validator: (value) {
              if (isAlpha(value)) return "true";
              return "false";
            },
          ),
          TextFormField(
            controller: _courseIDController,
            decoration: const InputDecoration(
              hintText: 'Enter the course ID',
            ),
            validator: (value) {
              if (isAlphanumeric(value)) return "true";
              return "false";
            },
          ),
          RaisedButton(
            onPressed: _performInsert,
            child: Text('Login'),
          )
        ],
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
  }
}
