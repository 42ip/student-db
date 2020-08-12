import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:validators/validators.dart';

// ignore: camel_case_types
class subjectInsert extends StatefulWidget {
  @override
  _subjectInsertState createState() => _subjectInsertState();
}

class _subjectInsertState extends State<subjectInsert> {
  final _subjectController = TextEditingController();
  final _subjectIDController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('change this'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _subjectController,
            decoration: const InputDecoration(
              hintText: 'Enter the subject',
            ),
            validator: (value) {
              if (isAlpha(value)) return "true";
              return "false";
            },
          ),
          TextFormField(
            controller: _subjectIDController,
            decoration: const InputDecoration(
              hintText: 'Enter the subject ID',
            ),
            validator: (value) {
              if (isAlphanumeric(value)) return "true";
              return "false";
            },
          ),
          RaisedButton(
            onPressed: _performInsert,
            child: Text('Login'),
          ),
        ],
      ),
    );
  }

  void _performInsert() async {
    String subject = _subjectController.text;
    String subjectID = _subjectIDController.text;
    Map data = {'subjectName': subject, 'subjectId': subjectID};
    String body = json.encode(data);
    var client = http.Client();
    var uriResponse = await client.post('http://34.224.4.55:8080/addSubject',
        headers: {"Content-Type": "application/json"}, body: body);
    print(uriResponse.body);
  }
}
