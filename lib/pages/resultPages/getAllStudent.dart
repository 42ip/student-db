import 'dart:convert';
import 'package:flutter/rendering.dart';
import 'package:StudentProject/model/Student.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Student> items;
  Map data;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    final title = 'Long List new ';
    items = data['items'];
    return MaterialApp(
      title: title,
      home: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 3.0),
              child: ListTile(
                tileColor: Colors.grey[900],
                leading: Icon(
                  Icons.broken_image,
                  color: Colors.grey[400],
                ),
//              title: Text('${items[index].Name}'),
                subtitle: Text(
                  '${items[index].Roll_no}',
                  style: TextStyle(color: Colors.grey[400]),
                ),
                trailing: FlatButton(
                    onPressed: () {
                      print('${items[index].Section}'.toUpperCase());
                    },
                    child: Icon(
                      Icons.arrow_right,
                      color: Colors.grey[400],
                      size: 30,
                    )),
                title: Text(
                  '${items[index].Name}'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
