import 'package:flutter/material.dart';

class extras extends StatefulWidget {
  //String img;
  //planosScreen(this.img);
  @override
  State<extras> createState() {
    return _extrasState();
  }
}

class _extrasState extends State<extras> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 170, 193, 232),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 170, 193, 232),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Extras",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
    ),
    );
  }
}