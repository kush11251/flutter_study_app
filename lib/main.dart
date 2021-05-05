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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.red,
                  child: Text(
                    "Container",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.green,
                  child: Text(
                    "Container",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.blue,
                  child: Text(
                    "Container",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.red,
                  child: Text(
                    "Container",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.green,
                  child: Text(
                    "Container",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.blue,
                  child: Text(
                    "Container",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.red,
                  child: Text(
                    "Container",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.green,
                  child: Text(
                    "Container",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.blue,
                  child: Text(
                    "Container",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          backgroundColor: Colors.purple,
          child: Icon(
            Icons.navigation,
          ),
        ),
      ),
    );
  }
}