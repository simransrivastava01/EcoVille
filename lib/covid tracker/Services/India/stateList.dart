import 'package:COVID19/Models/cardModel.dart';
import 'package:COVID19/Services/India/India.dart';
import 'package:flutter/material.dart';

class StateList extends StatefulWidget {
  @override
  _StateListState createState() => _StateListState();
}

class _StateListState extends State<StateList> {
  var state;

  void fetchData() async {
    var statelist = await IndiaModel().getStateData();
    setState(() {
      state = statelist;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget _list(int i) {
      int confirmed = int.parse(state['statewise'][i]['confirmed']);
      String deltaconfirmed = (state['statewise'][i]['deltaconfirmed']);
      int active = int.parse(state['statewise'][i]['active']);
      int recovered = int.parse(state['statewise'][i]['recovered']);
      String deltarecovered = (state['statewise'][i]['deltarecovered']);
      int deaths = int.parse(state['statewise'][i]['deaths']);
      String deltadeaths = (state['statewise'][i]['deltadeaths']);

      if (i == 0) {
        Container confirmCard =
            CardModel('Confirmed', confirmed, '+$deltaconfirmed').card1();
        Container activeCard = CardModel('Active', active, '').card2();
        Container recoveredCard =
            CardModel('Recovered', recovered, '+$deltarecovered').card3();
        Container deceasedCard =
            CardModel('Deceased', deaths, '+$deltadeaths').card4();
        return Column(
          children: <Widget>[
            Text("Last updated : ${state['statewise'][0]['lastupdatedtime']}"),
            SizedBox(height: height * 0.02),
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
            SizedBox(height: height * .08),
            Text("*Touch on state to view stats\n"),
          ],
        );
      }
      return Column(
        children: <Widget>[
          Container(
            color: Colors.indigo[50],
            child: ListTile(
              onTap: () {
                Navigator.of(context)
                    .pushNamed('/statepage', arguments: state['statewise'][i]);
              },
              title: Center(
                heightFactor: 1,
                child: Center(
                  child: Text(
                    "${state['statewise'][i]['state']}",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              contentPadding: EdgeInsets.all(7),
              subtitle: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 25,
                          child: Text(
                            "$confirmed (↑${state['statewise'][i]['deltaconfirmed']})",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          color: Colors.red[400],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 25,
                          child: Text(
                            "${state['statewise'][i]['active']}",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          color: Colors.blue[400],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 25,
                          child: Text(
                            "$recovered (↑${state['statewise'][i]['deltarecovered']})",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          color: Colors.green[400],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 25,
                          child: Text(
                            "$deaths  (↑${state['statewise'][i]['deltadeaths']})",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(),
        ],
      );
    }

    if (state == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        itemCount: 38,
        itemBuilder: (BuildContext context, int index) {
          return _list(index);
        },
      );
    }
  }
}
