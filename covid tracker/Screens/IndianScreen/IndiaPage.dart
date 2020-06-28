import 'package:COVID19/Services/India/stateList.dart';
import 'package:flutter/material.dart';

class IndiaPage extends StatefulWidget {
  @override
  _IndiaPageState createState() => _IndiaPageState();
}

class _IndiaPageState extends State<IndiaPage> {
  String statename;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ListView(
      padding: EdgeInsets.all(15),
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      children: <Widget>[
        SizedBox(height: height * .08),
        TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: "Enter state name",
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                borderSide: BorderSide.none),
          ),
          onChanged: (value) {
            statename = value;
          },
        ),
        SizedBox(
          height: height * 0.02,
        ),
        MaterialButton(
          child: Text("Search"),
          color: Colors.black45,
          onPressed: () {
            Navigator.of(context).pushNamed(
              '/state',
              arguments: statename,
            );
          },
        ),
        SizedBox(height: height * .05),
        StateList(),
      ],
    );
  }
}
