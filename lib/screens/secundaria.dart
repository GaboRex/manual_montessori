import 'package:flutter/material.dart';

class secundaria extends StatefulWidget {
  //String img;
  //planosScreen(this.img);
  @override
  State<secundaria> createState() {
    return _secundariaState();
  }
}

class _secundariaState extends State<secundaria> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 170, 193, 232),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 170, 193, 232),
    ),
    );
  }
}