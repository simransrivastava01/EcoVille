import 'package:COVID19/Screens/IndianScreen/indiaPage.dart';
import 'package:COVID19/Screens/homepage.dart';
import 'package:COVID19/Services/routeGenerator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;

  static final _tabPages = <Widget>[HomePage(), IndiaPage()];

  static const _tabs = <Tab>[
    Tab(text: 'World'),
    Tab(text: 'India'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabPages.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      color: Colors.white,
      home: Scaffold(
        appBar: AppBar(
          title: Text("COVID-19 Tracker"),
          centerTitle: true,
        ),
        body: TabBarView(
          children: _tabPages,
          controller: _tabController,
        ),
        bottomNavigationBar: Material(
          color: Colors.black45,
          child: TabBar(
            tabs: _tabs,
            controller: _tabController,
          ),
        ),
      ),
    );
  }
}
