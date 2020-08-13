import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:validators/validators.dart';

// ignore: camel_case_types
class subjectDelete extends StatefulWidget {
  @override
  _subjectDeleteState createState() => _subjectDeleteState();
}

class _subjectDeleteState extends State<subjectDelete> {
  final _subjectIDController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#4F6F8F'),
      appBar: AppBar(
        backgroundColor: Hexcolor('#1B3B59'),
        title: Text('change this'),
      ),
      body: Builder(
        builder: (context) => Column(
          children: [
            TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              controller: _subjectIDController,
              decoration: const InputDecoration(
                hintText: 'Enter the subject ID',
                hintStyle: TextStyle(color: Colors.white),
              ),
              validator: (value) {
                if (isAlphanumeric(value)) return "true";
                return "false";
              },
            ),
            RaisedButton(
              color: Hexcolor('#224C73'),
              onPressed: () {
                _performInsert();
                final snackbar = SnackBar(
                  backgroundColor: Hexcolor('#1B3B59'),
                  content:
                      Text('${_subjectIDController.text} has been deleted.'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      //Code that is to be added later
                    },
                  ),
                );
                Scaffold.of(context).showSnackBar(snackbar);
              },
              child: Text('submit'),
            ),
          ],
        ),
      ),
    );
  }

  void _performInsert() async {
    String subjectID = _subjectIDController.text;
    String body = subjectID;
    var client = http.Client();
    var response = await client.send(http.Request(
        "DELETE", Uri.parse("http://34.224.4.55:8080/deleteSubject/"))
      ..body = "$subjectID");
    print(response.statusCode);
  }
}
//fadsfgadgad