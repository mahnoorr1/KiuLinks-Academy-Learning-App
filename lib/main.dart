import 'package:flutter/material.dart';
import 'package:kiulinks_app/Views/navBar.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  int hexColor(String color) {
    String newColor = '0xff' + color;
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return finalColor;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Poppins',
              primaryColor: Color(hexColor('#00204C')),
              buttonColor: Color(hexColor('#A700FA')),
              focusColor: Color(hexColor('#A700FA')),
              backgroundColor: Color(hexColor('#EAF2FF')),
            ),
            title: 'KiuLinks Academy',
            home: navigation(),
        );
      }
    );
  }
}


