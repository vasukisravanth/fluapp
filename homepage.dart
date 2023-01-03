import 'package:flutter/material.dart';
import 'student.dart';
import 'teacher.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(child: Text("StudyZen")),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Student/Teacher",
                textScaleFactor: 2.0,
              ),
              SizedBox(height: 25.0),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => student(),
                        ));
                  },
                  color: Colors.white,
                  child: Text("Student")),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => teacher(),
                      ));
                },
                color: Colors.white,
                child: Text("Teacher"),
              )
            ]),
      ),
    );
  }
}
