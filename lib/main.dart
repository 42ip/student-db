import 'package:StudentProject/pages/optionPages/studentHome.dart';
import 'package:StudentProject/pages/resultPages/getAllStudent.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/studentHome': (context) => studentHome(),
      '/getAllstudents': (context) => MyApp(),
      // '/display': (context) => Display(),
    },
  ));
}
