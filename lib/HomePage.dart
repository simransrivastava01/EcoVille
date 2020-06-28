import 'package:flutter/material.dart';



//void main() => runApp(HomePage());

class HomePage extends StatefulWidget {

  static String id = 'welcome_screen';

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp
    (
        title: "Blog App",
    theme: new ThemeData(
    primarySwatch: Colors.pink,
    ),
    );
}
}