import 'package:flutter/material.dart';

class CardModel {
  String type;
  int data;
  String newData;
  CardModel(this.type, this.data, this.newData);

  Container card1() {
    return Container(
      color: Colors.grey[100],
      width: 178,
      padding: EdgeInsets.all(7),
      child: Column(
        children: <Widget>[
          Text(
            "$type",
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$newData",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$data",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }

  Container card2() {
    return Container(
      color: Colors.grey[100],
      width: 178,
      padding: EdgeInsets.all(7),
      child: Column(
        children: <Widget>[
          Text(
            "$type",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$newData",
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$data",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }

  Container card3() {
    return Container(
      color: Colors.grey[100],
      width: 178,
      padding: EdgeInsets.all(7),
      child: Column(
        children: <Widget>[
          Text(
            "$type",
            style: TextStyle(
              color: Colors.green,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$newData",
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$data",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }

  Container card4() {
    return Container(
      color: Colors.grey[100],
      width: 178,
      padding: EdgeInsets.all(7),
      child: Column(
        children: <Widget>[
          Text(
            "$type",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$newData",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$data",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}

class UpdatedCardModel {
  String confirmed;
  String deltaConfirmed;
  String active;
  String recoverd;
  String deltaRecovered;
  String deaths;
  String deltaDeaths;
  String lastupdated;

  UpdatedCardModel(
      this.confirmed,
      this.deltaConfirmed,
      this.active,
      this.recoverd,
      this.deltaRecovered,
      this.deaths,
      this.deltaDeaths,
      this.lastupdated);

  Container card() {
    return Container(
      padding: EdgeInsets.all(10),
      //color: Colors.grey[100],
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "$confirmed",
              style: TextStyle(
                color: Colors.red,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Active Cases",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "$active",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Recovered Cases",
                style: TextStyle(fontSize: 20),
              ),
              RichText(
                text: TextSpan(
                  text: "$recoverd   ",
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                      text: " +$deltaRecovered ",
                      style: TextStyle(
                          backgroundColor: Colors.grey[200],
                          color: Colors.black,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Deaths",
                style: TextStyle(fontSize: 20),
              ),
              RichText(
                text: TextSpan(
                  text: "$deaths   ",
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                      text: " +$deltaDeaths ",
                      style: TextStyle(
                        backgroundColor: Colors.grey[200],
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(),
          SizedBox(height: 8),
          Text("last updated : $lastupdated"),
        ],
      ),
    );
  }
}