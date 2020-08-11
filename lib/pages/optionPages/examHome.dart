import 'dart:convert';

import 'package:StudentProject/model/Exams.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class examHome extends StatefulWidget {
  @override
  _examHomeState createState() => _examHomeState();
}

class _examHomeState extends State<examHome> {
  List<Exams> items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('this is the Exams home page'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () async {
                  var client = new http.Client();
                  final res =
                      await client.get('http://34.224.4.55:8080/getAllExams');
                  print(res.body);
                  final parsed =
                      await json.decode(res.body).cast<Map<String, dynamic>>();
                  items = await parsed
                      .map<Exams>((json) => Exams.fromJson(json))
                      .toList();
                  print(items);
                  Navigator.pushNamed(context, '/getAllExams',
                      arguments: {'items': items});
                },
                child: Text('get', style: TextStyle(fontSize: 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('insert', style: TextStyle(fontSize: 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('update', style: TextStyle(fontSize: 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('delete', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
