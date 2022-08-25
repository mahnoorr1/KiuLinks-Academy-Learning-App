import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/utilities/SizeConfig.dart';

class gift extends StatefulWidget {
  @override
  State<gift> createState() => _giftState();
}

class _giftState extends State<gift> {
  var _notifications = {};

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Column(children: [
      Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.355,
            color: Theme.of(context).primaryColor,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.335,
            color: Colors.black,
          ),
          Container(
            alignment: Alignment.topCenter,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.19),
            child: Container(
              // margin: EdgeInsets.only(left: 120, bottom: 70),
              child: Image.asset("assets/gift box.png"),
              width: MediaQuery.of(context).size.width * 0.45,
              height: MediaQuery.of(context).size.width * 0.45,
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: Text(
              "Gift Box",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.17),
            child: Text(
              "Enjoy Your Perks",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Center(
              child: _notifications.isEmpty
                  ? Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.55),
                      child: Text(
                        "You have No notifications at this moment",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    )
                  : ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext ctx, index) {
                        return ListTile();
                      })),
        ],
      ),
    ]));
  }
}
