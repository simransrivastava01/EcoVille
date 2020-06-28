import 'cardModel.dart';
import 'World.dart';
import 'package:flutter/material.dart';

class LoadingHomePage extends StatefulWidget {
  @override
  _LoadingHomePageState createState() => _LoadingHomePageState();
}

class _LoadingHomePageState extends State<LoadingHomePage> {
  var world;
  String countryName;

  int confirmed;
  String newConfirmed;
  int deaths;
  String newDeaths;
  int recovered;
  String newRecovered;
  int active;

  Container confirmCard;
  Container activeCard;
  Container recoveredCard;
  Container deceasedCard;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    var worldData = await WorldModel().getWorldData();
    setState(() {
      world = worldData;
      if (worldData == null) {
        Navigator.of(context).pushNamed('/error');
        return;
      }
    });
  }

  Widget build(BuildContext context) {
    if (world == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      confirmed = (world['Global']['TotalConfirmed']).toInt();
      newConfirmed = (world['Global']['NewConfirmed']).toString();
      deaths = (world['Global']['TotalDeaths']).toInt();
      newDeaths = (world['Global']['NewDeaths']).toString();
      recovered = (world['Global']['TotalRecovered']).toInt();
      newRecovered = (world['Global']['NewRecovered']).toString();
      active = confirmed - deaths - recovered;
      confirmCard = CardModel('Confirmed', confirmed, '+$newConfirmed').card1();
      activeCard = CardModel('Active', active, '').card2();
      recoveredCard =
          CardModel('Recovered', recovered, '+$newRecovered').card3();
      deceasedCard = CardModel('Deceased', deaths, '+$newDeaths').card4();
      double height = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width;
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(child: confirmCard),
              SizedBox(width: width * 0.06),
              Expanded(child: activeCard),
            ],
          ),
          SizedBox(height: height * .08),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(child: recoveredCard),
              SizedBox(width: width * 0.06),
              Expanded(child: deceasedCard),
            ],
          ),
        ],
      );
    }
  }
}