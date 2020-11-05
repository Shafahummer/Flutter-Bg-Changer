import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bg Changer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Set Background"),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colorsArray = [0xFFc1c1c1, 0xFFD63031, 0xFF6A89CC, 0xFF019031, 0xFFF222];

  var currentColor = 0xFFFFFFFF;
  var btnBg = 0xFFc1c1c1;

  setRandom() {
    var rnd = Random().nextInt(colorsArray.length);

    var btnColr = Random().nextInt(colorsArray.length);

    setState(() {
      currentColor = colorsArray[rnd];
      btnBg = colorsArray[btnColr];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(currentColor),
        child: Center(
          child: RaisedButton(
            onPressed: setRandom,
            color: Color(btnBg),
            child: Text("Click me"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
          ),
        ));
  }
}
