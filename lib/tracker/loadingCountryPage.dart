import 'World.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingCountryPage extends StatefulWidget {
  final String countryName;
  LoadingCountryPage(this.countryName);
  @override
  _LoadingCountryPageState createState() => _LoadingCountryPageState();
}

class _LoadingCountryPageState extends State<LoadingCountryPage> {
  var country;
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
    country = await WorldModel().getCountryData(widget.countryName);
    if (country == null) {
      Navigator.of(context).pushNamed('/error');
      return;
    }
    Navigator.of(context).popAndPushNamed('/countrypage', arguments: country);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SpinKitHourGlass(
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Just a moment..."),
        ],
      ),
    );
  }
}