import 'package:flutter/material.dart';

class ninez extends StatefulWidget {
  //String img;
  //planosScreen(this.img);
  @override
  State<ninez> createState() {
    return _ninezState();
  }
}

class _ninezState extends State<ninez> {
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