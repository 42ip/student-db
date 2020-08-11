import 'dart:convert';
import 'package:StudentProject/model/Subjects.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class subjectHome extends StatefulWidget {
  @override
  _subjectHomeState createState() => _subjectHomeState();
}

class _subjectHomeState extends State<subjectHome> {
  List<Subjects> items;
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
                onPressed: () async {
                  var client = new http.Client();
                  final res = await client
                      .get('http://34.224.4.55:8080/getAllSubjects');
                  print(res.body);
                  final parsed =
                      await json.decode(res.body).cast<Map<String, dynamic>>();
                  items = await parsed
                      .map<Subjects>((json) => Subjects.fromJson(json))
                      .toList();
                  print(items);
                  Navigator.pushNamed(context, '/getAllsubjects',
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
