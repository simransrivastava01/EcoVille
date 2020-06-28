import 'package:COVID19/Models/cardModel.dart';
import 'package:COVID19/Services/India/districtList.dart';
import 'package:flutter/material.dart';

class StatePage extends StatefulWidget {
  final state;
  StatePage(this.state);

  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  String confirmed;
  String deltaconfirmed;
  String deaths;
  String deltadeaths;
  String recovered;
  String deltarecovered;
  String active;
  String stateName;
  String lastupdated;

  Container stateCard;

  @override
  void initState() {
    super.initState();
    updateUI();
  }

  void updateUI() {
    setState(() {
      confirmed = (widget.state['confirmed']);
      deltaconfirmed = (widget.state['deltaconfirmed']);
      active = (widget.state['active']);
      recovered = (widget.state['recovered']);
      deltarecovered = (widget.state['deltarecovered']);
      deaths = (widget.state['deaths']);
      deltadeaths = (widget.state['deltadeaths']);
      lastupdated = (widget.state['lastupdatedtime']);
      stateName = (widget.state['state']);
      stateCard = UpdatedCardModel(
              '$confirmed',
              '$deltaconfirmed',
              '$active',
              '$recovered',
              '$deltarecovered',
              '$deaths',
              '$deltadeaths',
              '$lastupdated')
          .card();
    });
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("$stateName".toUpperCase()),
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
              stateCard,
              SizedBox(height: height * 0.05),
              DistrictList('$stateName'),
            ],
          ),
        ],
      ),
    );
  }
}
