//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:studyzen/homepage.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "studyzen",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Homepage(),
    );
  }
}
