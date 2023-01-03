import 'package:flutter/material.dart';

class student extends StatefulWidget {
  @override
  State<student> createState() => _studentState();
}

class _studentState extends State<student> {
  final _textController = TextEditingController();
  String userpost = ' ';
  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Student"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  child: Center(
                    child: Text(userpost, style: TextStyle(fontSize: 35)),
                  ),
                )),
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                      hintText: 'Name',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {
                            _textController.clear();
                          },
                          icon: const Icon(Icons.clear))),
                ),
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                      hintText: 'What is your question',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {
                            _textController.clear();
                          },
                          icon: const Icon(Icons.clear))),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      userpost = _textController.text;
                    });
                  },
                  color: Colors.blue,
                  child:
                      const Text('Post', style: TextStyle(color: Colors.white)),
                )
              ],
            )));
  }
}
