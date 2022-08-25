
import 'package:flutter/material.dart';

class notifications extends StatefulWidget {
  const notifications({ Key? key }) : super(key: key);

  @override
  State<notifications> createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  var _notification = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
            Stack(children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.195,
                      color: Colors.black,
                      ),
                      Container(
                      alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.11),
                      child: Container(
                        // margin: EdgeInsets.only(left: 120, bottom: 70),
                        child: Image.asset("assets/logo.png"),
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.width * 0.3,
                        ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.6,
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
                        child: _notification.isEmpty? Opacity(opacity: 0.6, child: Image.asset("assets/no notification.png",)) : new ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext ctx, index){
                            return ClipRRect();
                        },
                        itemCount: 5,),
                      ),
                    ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.55),
                child: Text(
                  "You have No notifications at this moment",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),),
                ],
              ),
            ]
          )
      );
  }
}