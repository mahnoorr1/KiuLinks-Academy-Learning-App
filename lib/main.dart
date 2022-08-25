import 'package:flutter/material.dart';
import 'package:untitled/utilities/SizeConfig.dart';
import 'package:untitled/views/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          textTheme: TextTheme(
            headline2: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontWeight: FontWeight.bold ,fontSize: 5.5 * (MediaQueryData().size.height / 100)), //for gift screen title
            headline3: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 2.5* (MediaQueryData().size.height / 100),), //for gift screen subtitle
            headline4: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 2.3 * (MediaQueryData().size.height / 100), fontWeight: FontWeight.w800), //for home screen cards main text
            headline5: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 2* (MediaQueryData().size.height / 100)), //for no notification text in gift and notifications screens
          ),
          primaryColor: Color(hexColor('#A700FA')),
          buttonColor: Color(hexColor('#76C734')),
          focusColor: Color(hexColor('#A700FA')),
        ),
        home: Material(
          child: splash(),
        ),
    );
  }
  int hexColor(String color) {
    String newColor = '0xff' + color;
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return finalColor;
  }
}

