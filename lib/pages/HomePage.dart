import 'package:flutter/material.dart';
import 'package:timetable/utils/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //AppBar
        drawer: Drawer(
          backgroundColor: Styles.COLOR2,
          child: Column(
            children: [
              Text("Text 1"),
              Text("Text 1"),
              Text("Text 1"),
            ],
          ),
        ),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 45,
                width: 45,
              ),
              Text(
                " Soochi",
                style: TextStyle(color: Styles.COLOR3),
              )
            ],
          ),
          backgroundColor: Styles.COLOR2,
        ),

        body: Text("harsh"),
      ),
    );
  }
}
