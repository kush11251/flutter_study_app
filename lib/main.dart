import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_study_app/strings.dart';

//State<StatefulWidget> createState() {

void main() {
  runApp(FlutterBootcamp());
}

class FlutterBootcamp extends StatefulWidget{
  @override
  _FlutterBootcamp createState() => _FlutterBootcamp();
}

class _FlutterBootcamp extends State<FlutterBootcamp>{

  List<String> notes = [
    "Do the project",
    "Reset Laptop",
    "Empty Phone",
    "Eat Proper Food",
    "My name is Kush"
  ];

  Widget cardTemplate(singlenotes){
    return Card(
      shadowColor: Colors.red,
      color: Colors.blueGrey,
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              singlenotes,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Notes App",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: notes.map((singlenote) => cardTemplate(singlenote)).toList(),
        ),
      ),
    );
  }
}