import 'package:flutter/material.dart';

class joinClass extends StatefulWidget {
  @override
  _joinClassState createState() => _joinClassState();
}

class _joinClassState extends State<joinClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.195,
            color: Colors.black,
          ),
          Container(
            alignment: Alignment.topCenter,
            margin:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.11),
            child: Container(
              // margin: EdgeInsets.only(left: 120, bottom: 70),
              child: Image.asset("assets/logo.png"),
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.3,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05, left: 10),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
            ),
          ),

        ],
      ),
    );
  }
}
