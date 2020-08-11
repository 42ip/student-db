import 'package:StudentProject/pages/optionPages/branchHome.dart';
import 'package:StudentProject/pages/optionPages/collegeInfoHome.dart';
import 'package:StudentProject/pages/optionPages/examHome.dart';
import 'package:StudentProject/pages/optionPages/studentHome.dart';
import 'package:StudentProject/pages/optionPages/subjectHome.dart';
import 'package:StudentProject/pages/resultPages/getAllExams.dart';
import 'package:StudentProject/pages/resultPages/getAllStudent.dart';
import 'package:StudentProject/pages/resultPages/getAllBranch.dart';
import 'package:StudentProject/pages/resultPages/getAllSubject.dart';
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
      '/getAllstudents': (context) => getAllStudent(),
      '/getAllBranch': (context) => getAllBranch(),
      '/branchHome': (context) => branchHome(),
      '/subjectHome': (context) => subjectHome(),
      '/getAllsubjects': (context) => getAllSubject(),
      '/examHome': (context) => examHome(),
      '/getAllExams': (context) => getAllExams(),
      '/collegeInfoHome': (context) => collegeInfo(),
    },
  ));
}
