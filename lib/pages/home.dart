import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('this is the home page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {},
              child: Text('branches', style: TextStyle(fontSize: 20)),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('college info', style: TextStyle(fontSize: 20)),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Exams', style: TextStyle(fontSize: 20)),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/studentHome',
                );
              },
              child: Text('Student', style: TextStyle(fontSize: 20)),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Subjects', style: TextStyle(fontSize: 20)),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Disabled Button', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
