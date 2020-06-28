import 'India.dart';
import 'package:flutter/material.dart';

class DistrictList extends StatefulWidget {
  final String statename;
  DistrictList(this.statename);
  @override
  _DistrictListState createState() => _DistrictListState();
}

class _DistrictListState extends State<DistrictList> {
  var district;

  void fetchData() async {
    var districtlist =
    await IndiaModel().getDistrictData('${widget.statename}');
    setState(() {
      district = districtlist;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Widget build(BuildContext context) {
    Widget _list(int i) {
      int confirmed = district['districtData'][i]['confirmed'];
      int deltaconfirmed = district['districtData'][i]['delta']['confirmed'];
      int active = district['districtData'][i]['active'];
      int recovered = district['districtData'][i]['recovered'];
      int deltarecovered = district['districtData'][i]['delta']['recovered'];
      int deaths = district['districtData'][i]['deceased'];
      int deltadeaths = district['districtData'][i]['delta']['deceased'];
      return Column(
        children: <Widget>[
          Container(
            color: Colors.indigo[50],
            child: ListTile(
              title: Center(
                heightFactor: 1,
                child: Center(
                  child: Text(
                    "${district['districtData'][i]['district']}",
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
                            "$confirmed (↑$deltaconfirmed)",
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
                            "$active",
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
                            "$recovered (↑$deltarecovered)",
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
                            "$deaths  (↑$deltadeaths)",
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

    if (district == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        itemCount: district['districtData'].length,
        itemBuilder: (BuildContext context, int index) {
          return _list(index);
        },
      );
    }
  }
}