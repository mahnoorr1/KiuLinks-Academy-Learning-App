import 'package:flutter/material.dart';
import 'package:kiulinks_app/Views/schedule_screen.dart';
import 'package:kiulinks_app/utilities/SizeConfig.dart';
import 'package:kiulinks_app/utilities/styles.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //defining dynamic values
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double smallCardWidth = width * 0.42;
    double smallCardHeight = height * 0.22;
    double cardHorizontalMargin = width * 0.05;
    double  largeCardHeight = height * 0.15;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(
      children: [
        //header , user profile and greeting
        Container(
          height: height * 0.2,
          margin:
              EdgeInsets.only(top: height * 0.005),
          child: Row(children: [
            SizedBox(
              width: width * 0.45,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: height * 0.08),
              // width: MediaQuery.of(context).size.width * 0.45,
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  "Hola! Usuario",
                  style: TextStyle(
                    fontSize: 4.6 * SizeConfig.blockSizeHorizontal,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Gracias por visitarnos!",
                  //style: Theme.of(context).textTheme.headline5,
                  style: TextStyle(       //used for subtext in cards and screen header
                      fontSize: 3.6 * SizeConfig.blockSizeHorizontal,
                      color: Theme.of(context).primaryColor),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(
                left: width * 0.02,
              ),
              width: width * 0.14,
              child: CircleAvatar(
                radius: width * 0.08,
                backgroundImage: AssetImage("assets/profile icon.png"),
                backgroundColor: Colors.blue,
              ),
            )
          ]),
        ),

        //subheading for route choosing
        Container(
          height: height * 0.15,
          margin: EdgeInsets.only(
              top: height * 0.18,
              left:  cardHorizontalMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Es un placer recibirte !!",
                style: styles.heading3(context),
                //style: style1,
              ),
              Text(
                "Elige tu ruta",
                style: styles.heading1(context),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 0.05,
        ),

        //Join and Schedule class route cards
        Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>schedule())),
              child: Container(
                margin: EdgeInsets.only(
                    top: height * 0.27,
                    left: cardHorizontalMargin),
                height: smallCardHeight,
                width: smallCardWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: width * 0.1,
                      backgroundColor: Theme.of(context).backgroundColor,
                      child: Container(
                          child: Image.asset(
                        "assets/live.png",
                        width: width * 0.13,
                      )),
                    ),
                    Text(
                      "En vivo",
                      //style: Theme.of(context).textTheme.headline2,
                      style: styles.heading2(context),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                        width: width * 0.35,
                        child: Text(
                          "Ingresa a tu próxima clase",
                          style: styles.heading3(context),
                          textAlign: TextAlign.center,
                          //style: Theme.of(context).textTheme.headline5,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: width * 0.06,
            ),
            GestureDetector(
              onTap: () => {},
              child: Container(
                margin: EdgeInsets.only(
                    top: height * 0.27,
                    right: cardHorizontalMargin),
                height: smallCardHeight,
                width: smallCardWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: width * 0.1,
                      backgroundColor: Theme.of(context).backgroundColor,
                      child: Container(
                          child: Image.asset(
                        "assets/gift.png",
                        width: width * 0.13,
                      )),
                    ),
                    Text(
                      "Descurbre",
                      //style: Theme.of(context).textTheme.headline2,
                      style: styles.heading2(context),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                        width: width * 0.35,
                        child: Text(
                          "Nuestros servicios gratis",
                          style: styles.heading3(context),
                          textAlign: TextAlign.center,
                          //style: Theme.of(context).textTheme.headline5,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
              margin: EdgeInsets.only(
                  top: height * 0.51,
                  left: cardHorizontalMargin),
              child: Text(
                "Conectar",
                //style: Theme.of(context).textTheme.headline1,
                style: styles.heading1(context),
              )),

        GestureDetector(
          onTap: ()=> {},
          child: Container(
            height:  largeCardHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            margin: EdgeInsets.only(
                top: height * 0.57,
                left: cardHorizontalMargin,
                right: cardHorizontalMargin),
            child: Row(children: [
              SizedBox(
                width: width * 0.06,
              ),
              CircleAvatar(
                radius: width * 0.1,
                backgroundColor: Theme.of(context).backgroundColor,
                child: Container(
                    child: Image.asset(
                  "assets/community.png",
                  width: width * 0.13,
                )),
              ),
              SizedBox(
                width: width * 0.06,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Comunidad",
                    style: styles.heading2(context),
                    //style: Theme.of(context).textTheme.headline2,
                  ),
                  Container(
                    width: width * 0.5,
                    child: Text(
                      "Acelera tu aprendizaje",
                      style: styles.heading3(context),
                      //style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
        GestureDetector(
          onTap: () => {},
          child: Container(
            height: largeCardHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            margin: EdgeInsets.only(
                top: height * 0.75,
                left: cardHorizontalMargin,
                right: cardHorizontalMargin),
            child: Row(children: [
              SizedBox(
                width: width * 0.06,
              ),
              CircleAvatar(
                radius: width * 0.1,
                backgroundColor: Theme.of(context).backgroundColor,
                child: Container(
                    child: Image.asset(
                  "assets/chat.png",
                  width: width * 0.13,
                )),
              ),
              SizedBox(
                width: width * 0.06,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chat",
                    style: styles.heading2(context),
                    //style: Theme.of(context).textTheme.headline2,
                  ),
                  Container(
                    width: width * 0.55,
                    child: Text(
                      "Hablar con un representante",
                      style: styles.heading3(context),
                      //style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ],
              )
            ]),
          ),
        )
      ],
    ));
  }
}
