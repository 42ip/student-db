import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#4F6F8F'),
      appBar: AppBar(
        backgroundColor: Hexcolor('#1B3B59'),
        centerTitle: true,
        title: Text('this is the home page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Hexcolor('#224C73'),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/branchHome',
                    );
                  },
                  child: Text('Branches', style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Hexcolor('#224C73'),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/collegeInfoHome',
                    );
                  },
                  child: Text('College info', style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Hexcolor('#224C73'),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/examHome',
                    );
                  },
                  child: Text('Exams', style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Hexcolor('#224C73'),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/studentHome',
                    );
                  },
                  child: Text('Student', style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Hexcolor('#224C73'),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/subjectHome',
                    );
                  },
                  child: Text('Subjects', style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
