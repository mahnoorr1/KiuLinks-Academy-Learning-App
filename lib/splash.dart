import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled/login_signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clean Code',
        home: AnimatedSplashScreen(
          duration: 2000,
          splash: Image.asset("assets/logo.png"),
          nextScreen: login(),
          splashIconSize: 200,
          backgroundColor: Colors.black,
          splashTransition: SplashTransition.slideTransition,
          pageTransitionType: PageTransitionType.rightToLeftWithFade,
          //backgroundColor:
        ));
  }
}