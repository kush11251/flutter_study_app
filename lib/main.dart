import 'package:flutter/material.dart';
import 'package:flutter_study_app/strings.dart';

void main() {
  runApp(FlutterBootcamp());
}

class FlutterBootcamp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            Strings.titleText,
          ),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            Strings.bodyText,
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepOrange,
              fontFamily: 'FiraCode',
            ),
          ),
        ),
      ),
    );
  }
}