import 'dart:convert';
import 'Student.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  var client = new http.Client();
  final res = await client.get('http://3.85.78.70:8080/getAllStudents');
  final parsed = json.decode(res.body).cast<Map<String, dynamic>>();
  var temp = parsed.map<Student>((json) => Student.fromJson(json)).toList();
  runApp(MyApp(items: temp));
}

class MyApp extends StatelessWidget {
  final List<Student> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Long List new ';

    return MaterialApp(
      title: title,
      home: Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(
                Icons.broken_image,
                color: Colors.grey[400],
              ),
//              title: Text('${items[index].Name}'),
              subtitle: Text('${items[index].Roll_no}',
                style: TextStyle(
                    color: Colors.grey[500]
                ),
              ),
              trailing: FlatButton(
                  onPressed:() {
                    print('${items[index].Section}' );
                  },
                  child:
                  Icon(
                    Icons.arrow_right,
                    color: Colors.grey[400],
                  )
              ),
              title: Text(
                '${items[index].Name}'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
