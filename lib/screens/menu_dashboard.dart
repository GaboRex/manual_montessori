import 'package:flutter/material.dart';


/*
class menuDashboard extends StatefulWidget {
  const menuDashboard({Key? key}) : super(key: key);

  @override
  _menuDashboardState createState() => _menuDashboardState();
}

class _menuDashboardState extends State<menuDashboard> {
  //creamos los items
  Card doMenuDashboard(String title, String img, int index){
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
              begin: FractionalOffset(0.0, 0.0) ,
              end: FractionalOffset(3.0, -1.0) ,
              colors: [Color(0xFF00488D), Color(0xFFFFFFFF)]
          ),
          boxShadow: const[
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: InkWell(
          onTap: (){
            if(index==0){
              //1.item
              Navigator.push(context, MaterialPageRoute(builder: ((context)=> infantilScreen())));
            }
            if(index==1){
              //2.item|
              Navigator.push(context, MaterialPageRoute(builder: ((context)=> ninosScreen())));
            }
            if(index==2){
              //3.item
              Navigator.push(context, MaterialPageRoute(builder: ((context)=> primariaScreen())));
            }
            if(index==3){
              //4.item
              Navigator.push(context, MaterialPageRoute(builder: ((context)=> secundariaScreen())));
            }
            if(index==1){
              //5.item
            }
            if(index==1){
              //6.item
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  img,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 20),
              Center(child: Text(
                title,
                style: const TextStyle(
                    fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                 ),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 170, 193, 232),
      drawer: const Drawer(
          backgroundColor: Color.fromARGB(100, 170, 193, 232),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Color.fromARGB(255, 0, 0, 32)
        ),
          backgroundColor: Color.fromARGB(255, 170, 193, 232),
          title:  Text(
              "Hola!Bienvenido",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 32)),
          )
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text(
                        "Manual Montessori",
                        style:  TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                    ),
                    ),
                    SizedBox(height: 4),
                      Text(
                      "¿En que plano se encuentra tu hij@?:",
                      style:  TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: GridView.count(
              crossAxisCount: 2,
                  padding: const EdgeInsets.all(2),
                children: [
                  //index numero1
                  doMenuDashboard("Infancia","assets/infantil2.png",0),
                  doMenuDashboard("Niñez","assets/ninos2.png",1),
                  doMenuDashboard("Primaria","assets/primaria3.png",2),
                  doMenuDashboard("Secundaria","assets/secundaria2.png",3),
                ],
              ),
          ),
        ],
      ),
      /*
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle),label: "User"),

        ],
      ),  */
    );
  }
 */