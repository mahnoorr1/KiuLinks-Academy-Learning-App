// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled/utilities/SizeConfig.dart';
import 'package:untitled/views/join_class.dart';
import 'package:untitled/views/schedule_class.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  int hexColor(String color) {
    String newColor = '0xff' + color;
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return finalColor;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
      Container(
        margin: EdgeInsets.only(top: 50),
        alignment: Alignment.topCenter,
        child: Container(
          // margin: EdgeInsets.only(left: 120, bottom: 70),
          child: Image.asset("assets/logo.png"),
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.width * 0.3,
        ),
      ),
          SizedBox(
            height: 5,
          ),
        Text(
          'Welcome to',
          style: TextStyle(
            fontSize: 3 * SizeConfig.blockSizeVertical,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
          Text(
            'KiuLinks Academy',
            style: TextStyle(
              fontFamily: 'SuezOne',
              fontSize: 3 * SizeConfig.blockSizeVertical,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.12,
        child: Material(
          shadowColor: Color(hexColor('#A700FA')),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 7,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ListTile(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => joinClass()));},
              leading: ClipRRect(child: Image.asset("assets/join class.png", width:  MediaQuery.of(context).size.width*0.13,)),
              title: Text(
                'Join Class',
                style: Theme.of(context).textTheme.headline4,
              ),
              subtitle: Text('Join Your online class', style: TextStyle(color: Colors.black),),
            ),
          ),
        ),
      ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
      Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Material(
          shadowColor: Color(hexColor('#A700FA')),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 7,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ListTile(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => scheduleClass()));},
              leading: ClipRRect(child: Image.asset("assets/free.png", width:  MediaQuery.of(context).size.width*0.13,)),
              title: Text('Free Class', style: Theme.of(context).textTheme.headline4,),
              subtitle: Text('Schedule your free class', style: TextStyle(color: Colors.black),),
            ),
          ),
        ),
      ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
      Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.12,
        child: Material(
          shadowColor: Color(hexColor('#A700FA')),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 7,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ListTile(
              leading: ClipRRect(child: Image.asset("assets/library.png", width:  MediaQuery.of(context).size.width*0.13,)),
              title: Text('Library', style: Theme.of(context).textTheme.headline4,),
              subtitle: Text('Access your digital book', style: TextStyle(color: Colors.black),),
            ),
          ),
        ),
      )
    ]));
  }
}
