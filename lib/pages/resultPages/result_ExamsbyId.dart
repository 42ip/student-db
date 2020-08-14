import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class showExams extends StatefulWidget {
  @override
  _showExamsState createState() => _showExamsState();
}

class _showExamsState extends State<showExams> {
  Map items;
  Map data;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    items = data['items'];
    return Scaffold(
      backgroundColor: Hexcolor('#4F6F8F'),
      appBar: AppBar(
        backgroundColor: Hexcolor('#1B3B59'),
        title: Text( 'Welcome, ${items[0]['id_N0']}'),
      ),
      body: Builder(
          builder: (context) => Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Card(
                color: Hexcolor('#224c73'),
                elevation: 10,
                child: Center(
                  child: Container(
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Text('Subject ID: ${items[0]['subjectId']}',style: TextStyle(color: Colors.white),),
                          SizedBox(height: 20,),
                          Text('Date: ${items[0]['date']}',style: TextStyle(color: Colors.white),),
                          SizedBox(height: 20,),
                          Text('Type: ${items[0]['type']}',style: TextStyle(color: Colors.white),),
                          SizedBox(height: 20,),
//                          Text('Section: ${items[0]['section']}',style: TextStyle(color: Colors.white),),
//                          SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );;
  }
}
