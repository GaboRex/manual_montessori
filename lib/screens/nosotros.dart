import 'package:flutter/material.dart';

class nosotros extends StatefulWidget {
  //String img;
  //planosScreen(this.img);
  @override
  State<nosotros> createState() {
    return _nosotrosState();
  }
}

class _nosotrosState extends State<nosotros> {
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
          "Sobre nosotros",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
    ),
    );
  }
}