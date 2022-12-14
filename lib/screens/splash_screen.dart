import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:manual_montessori_beta/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();

  }


class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    //Future.delayed(Duration(milliseconds: 1500),()=> Navigator.push(context, MaterialPageRoute()=> ))
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: SingleChildScrollView(
          child:Column(
            children: [
                Image.asset(
                    "assets/logoAzul.png"
                )
              ],
          )
        ),
      backgroundColor: Color.fromARGB(255, 170, 193, 232),
      nextScreen: homeScreen(),
    splashIconSize: 400,
    duration: 2500 ,
    splashTransition:SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
        );

  }
}