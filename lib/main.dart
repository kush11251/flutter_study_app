import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//https://reqres.in/api/users?page=2
//Uri.https('reqres.in', '/api/users?page=2'

void main() {
  runApp(QuickTimer());
}

class QuickTimer extends StatefulWidget{
  @override
  _QuickTimer createState() => _QuickTimer();
}

class _QuickTimer extends State<QuickTimer>{

  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Timer App"
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body:
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Text(
            "Click Me",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: (){
            print("Nothing");
          },
        ),
      ),
    );
  }
}
