import 'package:flutter/material.dart';

class AlertScreen extends StatefulWidget {
  @override
  _AlertScreenState createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("ERROR"),
      content: Text(
          "Soory for the inconvinience. The server seems busy. So, please wait for 5 seconds before giving a request"),
      actions: <Widget>[
        FlatButton(
          child: Text("OK"),
          onPressed: () => Navigator.of(context)
              .pushNamedAndRemoveUntil('/', (route) => false),
        ),
      ],
    );
  }
}
