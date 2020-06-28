import 'package:COVID19/Services/World/loadingHomePage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    String countryName;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(15),
        physics: BouncingScrollPhysics(),
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
              hintText: "Enter country name",
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide.none),
            ),
            onChanged: (value) {
              countryName = value;
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
                '/country',
                arguments: countryName,
              );
            },
          ),
          SizedBox(height: height * .08),
          LoadingHomePage(),
        ],
      ),
    );
  }
}
