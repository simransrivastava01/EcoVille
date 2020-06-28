import 'package:COVID19/Services/India/India.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingStatePage extends StatefulWidget {
  final stateName;
  LoadingStatePage(this.stateName);
  @override
  _LoadingStatePageState createState() => _LoadingStatePageState();
}

class _LoadingStatePageState extends State<LoadingStatePage> {
  var state;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    state = await IndiaModel().getState(widget.stateName);
    if (state == null) {
      Navigator.of(context).pushNamed('/error');
      return;
    }
    Navigator.of(context).popAndPushNamed('/statepage', arguments: state);
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
