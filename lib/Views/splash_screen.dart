import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled/views/login_screen.dart';
class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 2000,
        splash: Image.asset("assets/logo.png"),
        nextScreen: login(),
        splashIconSize: MediaQuery.of(context).size.width * 0.35,
        backgroundColor: Colors.black,
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.rightToLeftWithFade,
        //backgroundColor:
    );
  }
}
