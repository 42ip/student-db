import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:validators/validators.dart';

// ignore: camel_case_types
class branchDelete extends StatefulWidget {
  @override
  _branchDeleteState createState() => _branchDeleteState();
}

// ignore: camel_case_types
class _branchDeleteState extends State<branchDelete> {
  final _branchIDController = TextEditingController();
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
              controller: _branchIDController,
              decoration: const InputDecoration(
                hintText: 'Enter the branch ID',
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
                _performDelete();
                final snackbar = SnackBar(
                  backgroundColor: Hexcolor('#1B3B59'),
                  content:
                      Text('${_branchIDController.text} has been deleted.'),
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

  void _performDelete() async {
    String branchID = _branchIDController.text;
    String body = branchID;
    var client = http.Client();
    var response = await client.send(http.Request(
        "DELETE", Uri.parse("http://34.224.4.55:8080/deleteBranch/"))
      ..body = "$branchID");
    print(response.statusCode);
  }
}
