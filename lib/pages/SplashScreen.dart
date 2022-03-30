import 'package:flutter/material.dart';
import 'package:timetable/pages/LoginPage.dart';
import 'dart:async';
import 'package:timetable/utils/logo.dart';
import '../utils/styles.dart';
import 'RegisterPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => RegisterPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.COLOR1,
      body: Logo(),
    );
  }
}
