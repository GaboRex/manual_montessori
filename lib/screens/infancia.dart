import 'package:flutter/material.dart';

import '../widgets/checklist_section.dart';
import '../widgets/videos_section.dart';

class infancia extends StatefulWidget {
  @override
  State<infancia> createState() {
    return _infanciaState();
  }
}

class _infanciaState extends State<infancia> {

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
          "Infancia",
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
              "Caracteristicas del plano Agu dada:" ,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "La mente absorbente del ni??o se produce de los 0 a los 6 a??os\n "
                  "-En este plano prima la creatividad y el cambio.\n "
                  "-Es la etapa de ???ay??dame a hacerlo solo??? y de los periodos sensibles del lenguaje, del orden, desarrollo del movimiento y refinamiento de los sentidos. \n"
                  "- Gracias a esta etapa sientan las bases de su personalidad",
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
            isVideoSection ? VideoSection() : ChecklistSection(),
          ],
        ),
      ),
    );
  }
}