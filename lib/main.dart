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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            Strings.titleText,
          ),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Center(
          // ignore: deprecated_member_use
          child: FlatButton.icon(
              onPressed: (){

              },
              icon: Icon(
                  Icons.alternate_email,
                color: Colors.white,
              ),
              label: Text(
                "Click Me",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              height: 50,
              minWidth: 200,
              color: Colors.blueAccent,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          child: Icon(
            Icons.alternate_email,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            print("Button Was Clicked");
          },
        ),
      ),
    );
  }
}