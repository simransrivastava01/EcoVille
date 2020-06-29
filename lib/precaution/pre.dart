import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrecautionScreen extends StatefulWidget {

  static String id = 'precaution_screen';

  @override
  _PrecautionScreenState createState() => _PrecautionScreenState();
}

class _PrecautionScreenState extends State<PrecautionScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(   //A Scaffold Widget provides a framework which implements the basic material design visual layout structure of the flutter app.

        appBar: AppBar(  //AppBar is used to display the title and back_arrow_ios at the top of the screen (above the bottom).
          centerTitle: true ,
          title: Text('Precautions'),
          backgroundColor: Colors.black,
        ),

        backgroundColor: Colors.black, //sets the background color of the screen.
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/precaution.jpg"),
              //fit: BoxFit.cover,
            ),
          ),
          //child: HomePage(),
        ),
      ),
    );
  }
}
