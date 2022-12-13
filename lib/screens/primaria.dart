import 'package:flutter/material.dart';

class primaria extends StatefulWidget {
  //String img;
  //planosScreen(this.img);
  @override
  State<primaria> createState() {
    return _primariaState();
  }
}

class _primariaState extends State<primaria> {
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