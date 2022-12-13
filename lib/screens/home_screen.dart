import 'package:flutter/material.dart';
import 'package:manual_montessori_beta/screens/extras.dart';
import 'package:manual_montessori_beta/screens/infancia.dart';
import 'package:manual_montessori_beta/screens/nosotros.dart';
import 'package:manual_montessori_beta/screens/planosScreen.dart';
import 'package:manual_montessori_beta/screens/ninez.dart';
import 'package:manual_montessori_beta/screens/primaria.dart';
import 'package:manual_montessori_beta/screens/secundaria.dart';

class homeScreen extends StatelessWidget {
  //crear opciones

  List etapasNombres=[
    "Infancia",
    "Niñez",
    "Primaria",
    "Secundaria",
    "Nosotros",
    "Extras",
  ];

  List<Color> etapasColores = [
    Color.fromARGB(255,33,140,116),
    Color.fromARGB(255, 11, 11, 63),
    Color.fromARGB(255,33,140,116),
    Color.fromARGB(255, 11, 11, 63),
    Color.fromARGB(255,33,140,116),
    Color.fromARGB(255, 11, 11, 63),
  ];

  List<Image> catImages = [
    Image.asset("assets/cuna.png",height: 50,width: 50),
    Image.asset("assets/ninos2.png",height: 50,width: 50),
    Image.asset("assets/primaria3.png",height: 50,width: 50),
    Image.asset("assets/secundaria2.png",height: 50,width: 50),
    Image.asset("assets/education.png",height: 50,width: 50),
    Image.asset("assets/mas.png",height: 50,width: 50),
  ];

  List imgList2 = [
    'Infancia',
    'Niñez ',
    'Primaria ',
    'Secundaria',
    'Educacion ',
    'Extras',
  ];


  List<Image> imgList = [
    Image.asset("images/infancia.png",height: 100,width: 100),
    Image.asset("images/ninez.png",height: 100,width: 100),
    Image.asset("images/primaria.png",height: 100,width: 100),
    Image.asset("images/secu.png",height: 100,width: 100),
    Image.asset("assets/education.png",height: 100,width: 100),
    Image.asset("assets/mas.png",height: 100,width: 100),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 170, 193, 232),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 32),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 3,bottom:15),
                  child: Text("Bienvenido!",style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: Color.fromARGB(255, 170, 193, 232),
                  ),),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top:20,left: 15,right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: etapasNombres.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: etapasColores[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catImages[index],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          etapasNombres[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        )
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Planos",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Ver todo",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                GridView.builder(
                  itemCount: etapasNombres.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4 * 240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        if(index==0){

                          Navigator.push(context, MaterialPageRoute(builder: ((context)=> infancia())));
                        }
                        if(index==1){

                          Navigator.push(context, MaterialPageRoute(builder: ((context)=> ninez())));
                        }
                        if(index==2) {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => primaria())));
                        }
                        if(index==3) {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => secundaria())));
                        }
                        if(index==4) {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => nosotros())));
                        }
                        if(index==5) {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => extras())));
                        }
                      },
                      child: Container(
                        padding:
                          EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(200, 5, 19, 38),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                  child: imgList[index],
                      ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              imgList2[index],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}