
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

class learningPlans extends StatelessWidget {
  const learningPlans({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
             // height: MediaQuery.of(context).size.height * 0.28,
              child: Stack(children: [
                Container(
                  height:MediaQuery.of(context).size.height*0.81 - (MediaQuery.of(context).size.height * 0.083),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.19),
                  child: ListView.separated(
                    itemCount: 3,
                    separatorBuilder: (BuildContext ctx, int index){
                      return SizedBox(
                        height: 35,
                      );
                    }, itemBuilder: (BuildContext context, int index) {
                    return Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.1,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * 0.55,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [

                                BoxShadow(
                                  color: Color(MyApp().hexColor('#A700FA')),
                                  blurRadius: 10.0, // soften the shadow
                                  spreadRadius: 0, //extend the shadow
                                  offset: Offset(
                                    0, // Move to right 10  horizontally
                                    5.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.1,
                          ),
                        ]);
                  },
                  ),
                ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.195,
                        color: Color(MyApp().hexColor('#A700FA')),
                        ),
                        Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.11),
                        alignment: Alignment.topCenter,

                        child: Container(
                          // margin: EdgeInsets.only(left: 120, bottom: 70),
                          child: Image.asset("assets/LOGO WHITE CIRCLE.png"),
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.3,
                          ),
                      ),


                  ],
                ),
            ),
            // ListView(
            //   children: [
            //     Container(
            //     alignment: Alignment.center,
            //     height: MediaQuery.of(context).size.height * 0.5,
            //     width: MediaQuery.of(context).size.width * 0.5,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(30),
            //       color: Colors.white,
            //       boxShadow: [
            //
            //         BoxShadow(
            //           color: Color(hexColor('#A700FA')),
            //           blurRadius: 15.0, // soften the shadow
            //           spreadRadius: 5.0, //extend the shadow
            //           offset: Offset(
            //             0, // Move to right 10  horizontally
            //             5.0, // Move to bottom 10 Vertically
            //           ),
            //         )
            //       ],
            //     ),
            //   ),


        ]),
    
      );
  }
}