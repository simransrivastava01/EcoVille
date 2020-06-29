import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {

  static String id = 'about_screen';

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.lightBlueAccent,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                          child: CircleAvatar(
                            radius: 80.0,

                            //backgroundColor: Colors.red,
                            backgroundImage: AssetImage('images/k1.jpeg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nikhil Sukhani\nB.E Cse\nFlutter Developer',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                              //fontFamily: 'Pacifico',
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Container(
                color: Colors.pinkAccent[100],
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                          child: CircleAvatar(
                            radius: 80.0,

                            //backgroundColor: Colors.red,
                            backgroundImage: AssetImage('images/i1.jpeg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Simran Srivastava\nB.E Cse\nFlutter Developer',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              //fontFamily: 'Pacifico',
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Container(
                color: Colors.orangeAccent[100],
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                          child: CircleAvatar(
                            radius: 80.0,

                            //backgroundColor: Colors.red,
                            backgroundImage: AssetImage('images/ss.jpeg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Sneha Gupta\nB.E Cse\nFlutter Developer',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              //fontFamily: 'Pacifico',
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
