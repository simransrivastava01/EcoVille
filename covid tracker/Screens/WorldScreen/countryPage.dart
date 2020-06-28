import 'package:COVID19/Models/cardModel.dart';
import 'package:flutter/material.dart';

class CountryPage extends StatefulWidget {
  final countryName;
  CountryPage(this.countryName);

  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  int confirmed;
  String newConfirmed;
  int deaths;
  String newDeaths;
  int recovered;
  String newRecovered;
  int active;
  String countryName;

  Container confirmCard;
  Container activeCard;
  Container recoveredCard;
  Container deceasedCard;

  @override
  void initState() {
    super.initState();
    updateUI();
  }

  void updateUI() {
    setState(() {
      confirmed = (widget.countryName['TotalConfirmed']).toInt();
      newConfirmed = (widget.countryName['NewConfirmed']).toString();
      deaths = (widget.countryName['TotalDeaths']).toInt();
      newDeaths = (widget.countryName['NewDeaths']).toString();
      recovered = (widget.countryName['TotalRecovered']).toInt();
      newRecovered = (widget.countryName['NewRecovered']).toString();
      active = confirmed - deaths - recovered;
      countryName = widget.countryName['Country'].toString();
      confirmCard = CardModel('Confirmed', confirmed, '+$newConfirmed').card1();
      activeCard = CardModel('Active', active, '').card2();
      recoveredCard =
          CardModel('Recovered', recovered, '+$newRecovered').card3();
      deceasedCard = CardModel('Deceased', deaths, '+$newDeaths').card4();
    });
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("$countryName".toUpperCase()),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(15),
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: height * .08),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  confirmCard,
                  activeCard,
                ],
              ),
              SizedBox(
                height: height * .08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  recoveredCard,
                  deceasedCard,
                ],
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: Text(
              "STAY STRONG ❤\nSTAY SAFE ❤",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
