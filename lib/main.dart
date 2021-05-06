import 'package:flutter/material.dart';
import 'package:flutter_study_app/Pages/choose_location.dart';
import 'package:flutter_study_app/Pages/new_location.dart';
import 'package:flutter_study_app/Pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',

    routes: {
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
      '/newlocation': (context) => NewLocation(),
    },
  ));
}
