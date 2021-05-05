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
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.red,
                    child: Text(
                      "A",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.green,
                    child: Text(
                        "B",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    child: Text(
                        "C",
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.red,
                    child: Text(
                      "A",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/sky.jpg'),
                    radius: 70,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    child: Text(
                      "C",
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.red,
                    child: Text(
                      "A",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.green,
                    child: Text(
                      "B",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    child: Text(
                      "C",
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
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