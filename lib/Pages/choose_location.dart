import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget{
  @override
  _ChooseLocation createState() => _ChooseLocation();
  
}

class _ChooseLocation extends State<ChooseLocation>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choose Location Page"
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          "You are on Choose Location Page"
        ),
      ),
    );
  }
}