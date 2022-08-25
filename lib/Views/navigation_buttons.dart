// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utilities/SizeConfig.dart';
import 'package:untitled/views/gift.dart';
import 'package:untitled/views/home_page.dart';
import 'package:untitled/views/learning_plans.dart';
import 'package:untitled/views/notifications.dart';

import 'whatsapp.dart';

class navigation extends StatefulWidget {
  @override
  _navigationState createState() => _navigationState();
}
class _navigationState extends State<navigation> {
  // String ACCOUNT_ID = "";
  final List<Widget> pages = [
    learningPlans(),
    gift(),
    homepage(),
    notifications(),
    whatsapp()
  ];
  int selectedPageIndex = 2;
  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

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
        body: pages[selectedPageIndex],
        bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Color(hexColor('#A700FA'))),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.083,
              child: BottomNavigationBar(
                onTap: selectPage,
                unselectedItemColor: Colors.black87,
                backgroundColor: Colors.black87,
                currentIndex: selectedPageIndex,
                // ignore: prefer_const_literals_to_create_immutables
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/plans icon.png"), size: 7 * SizeConfig.blockSizeHorizontal),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/gift.png"), size: 7 * SizeConfig.blockSizeHorizontal),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/home.png"), size: 7 * SizeConfig.blockSizeHorizontal),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/notification.png"), size: 7 * SizeConfig.blockSizeHorizontal),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.chat,
                        size: 7 * SizeConfig.blockSizeHorizontal,
                      ),
                      label: '')
                ],
              ),
            )
            // } else {
            //   return Center(
            //     child: CircularProgressIndicator(),
            //   );
            // }

            ));

    // if (islandScape) return Scaffold(body: pieChart());
  }
}
