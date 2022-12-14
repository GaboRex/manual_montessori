import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

class nosotros extends StatefulWidget {

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
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
              ),
              ShapeOfView(
                shape: ArcShape(
                  direction: ArcDirection.Outside,
                  height: 45,
                  position: ArcPosition.Bottom,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  //color: Color.fromARGB(255, 0, 0, 32).withOpacity(0.8),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/fondoP.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 120,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    height: 170,
                    width: 170,
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 0, 0, 32),
                      backgroundImage: AssetImage("images/bruniP2.jpeg"),
                    ),
                  ),
                ),
              ),
            Positioned(
              top: 300,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  "Gabriel Neme",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 30,
                  ),
                ),
              ),
            ),
              Positioned(
                top: 350,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(155, 101, 107, 141),
                    ),
                    child: Text(
                      "!Hola! Mi nombre es Gabriel Neme, soy estudiante de la carrera de Ingenieria de sistemas computacionales. \n"
                      "Este proyecto personal tiene el objetivo de ayudar a a cualquier persona que quier saber sobre el tan famoso metodo Montessori. \n"
                      "En esta aplicacion podras encontrar desde los planos por los cuales pasa tu hijo, algunos videos para cada plano y tambien algunas actividades o situaciones que puedes identificar y asi ayudar en el proceso a tu hijo.\n"
                      "Espero ayudarte y que aprendas tanto como yo.",

                      style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
