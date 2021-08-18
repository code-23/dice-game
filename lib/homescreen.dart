import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenstate();
  }
}

class HomeScreenstate extends State<HomeScreen> {
  int leftnumber = 1;
  int rightnumber = 2;
  void roll() {
    setState(() {
      leftnumber = Random().nextInt(6) + 1;
      rightnumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dice Game"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Image(
                              image: AssetImage(
                                  "images/dice-png-$leftnumber.png")))),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Image(
                              image: AssetImage(
                                  "images/dice-png-$rightnumber.png"))))
                ],
              ),
              ElevatedButton(
                  onPressed: roll,
                  child: Text(
                    "Roll",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ))
            ],
          ),
        ));
  }
}
