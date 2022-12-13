import 'package:flutter/material.dart';

class planosScreen extends StatefulWidget {
  String img;
  planosScreen(this.img);
  @override
  State<planosScreen> createState() {
    return _planosScreenState();
  }
}

class _planosScreenState extends State<planosScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 170, 193, 232),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 170, 193, 232),
        elevation: 0,
        centerTitle: true,
        title: Text(widget.img,
            style: TextStyle(
            fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 101, 107, 141),

                //image: DecorationImage(
                  //image: AssetImage("images/${widget.img}.png"),
                ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Color.fromARGB(255, 0, 0, 32),
                    size: 45,
                  ),
                ),
              ),
              ),
            SizedBox(height: 15),
            Text("Plano ${widget.img}: ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
            ),
            ),
          SizedBox(height: 5),
          Text(
            "Empecemos! A descubir en que plano esta tu hijo",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500 ,
        ),
            ),
            SizedBox(height: 5),
            Text(
              "Caracteristicas",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500 ,
                color: Colors.black.withOpacity(0.5)
              ),
            ),
            
          ],
        ),
      ),
    );
  }

}