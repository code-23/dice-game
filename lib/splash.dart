import 'dart:async';

import 'package:flutter/material.dart';
import 'package:roll_dice/homescreen.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Splashscreenstate();
  }
}

class Splashscreenstate extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image(image: AssetImage("images/dice_splash.gif"))),
    );
  }
}
