import 'package:flutter/material.dart';

import '../widgets/juventud/checklist_sectionJuventud.dart';
import '../widgets/juventud/videos_sectionJuventud.dart';

class secundaria extends StatefulWidget {

  @override
  State<secundaria> createState() {
    return _secundariaState();
  }
}

class _secundariaState extends State<secundaria> {
  bool isVideoSection = true;
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
          "Juventud",
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
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(155, 101, 107, 141),
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
                    size: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Caracteristicas e independencia:" ,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Los 4 planos del desarrollo de Montessori concluyen con la madurez plena del cerebro, entre los 18 y los 24 años.\n "
                  "- El joven se convierte en adulto.\n "
                  "- Comienza a adquirir estabilidad emocional y social. \n"
                  "- Generalmente, ocurre la elección vocacional",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500 ,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(155, 101, 107, 141),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    // si el boolealo isVideoSection es true
                    color: isVideoSection
                        ? Color.fromARGB(255, 0, 0, 32)
                        : Color.fromARGB(255, 0, 0, 32).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideoSection = true;
                        });
                      },
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVideoSection
                        ?Color.fromARGB(255, 0, 0, 32).withOpacity(0.8)
                        :Color.fromARGB(255, 0, 0, 32),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideoSection = false;
                        });
                      },
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                        child: Text(
                          "Checklist",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            isVideoSection ? VideoSection4() : ChecklistSection4(),
          ],
        ),
      ),
    );
  }
}