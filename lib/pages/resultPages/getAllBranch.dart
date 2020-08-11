import 'package:StudentProject/model/Branch.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

class getAllBranch extends StatefulWidget {
  @override
  _getAllBranchState createState() => _getAllBranchState();
}

class _getAllBranchState extends State<getAllBranch> {
  List<Branch> items;
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
                title: Text(
                  '${items[index].course}'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  '${items[index].courseID}',
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}