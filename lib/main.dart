import 'HomePage.dart';
import 'package:flutter/material.dart';
import 'game.dart';
import 'package:hackathon/calculate/fitness.dart';


void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp
      (
      title: "Blog App",
      theme: new ThemeData(
        primarySwatch: Colors.pink,
      ),
      //home:HomePage(),
      initialRoute: GameScreen.id,
      routes: {
        HomePage.id:(context) => HomePage(),
        FitnessScreen.id:(context) => FitnessScreen(),
        GameScreen.id:(context) => GameScreen(),
        //ChatScreen.id:(context) => ChatScreen(),
      },
    );

  }
}