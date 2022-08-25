// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:untitled/utilities/SizeConfig.dart';
import 'package:untitled/views/Signup_screen.dart';
import 'package:untitled/views/navigation_buttons.dart';
import 'package:untitled/views/web_view.dart';
// import 'package:hexcolor/hexcolor.dart';
class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}

// #A700FA

class _loginState extends State<login> with TickerProviderStateMixin {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(bottomRight: Radius.circular(160), bottomLeft: Radius.circular(160)),
                  // color: Colors.purple,
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/login purple bar.png",
                      ),
                      fit: BoxFit.cover)),
              height: MediaQuery.of(context).size.height * 0.48,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  Container(
                    child: Image.asset("assets/LOGO WHITE CIRCLE.png"),
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.width * 0.45,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "KiuLinks",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Material(
                            elevation: 5,
                            shadowColor: Color(hexColor('#A700FA')),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: TextFormField(
                                validator: (val) {
                                  return RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(val!)
                                      ? null
                                      : "Please Enter Correct Email";
                                },
                                controller: emailEditingController,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.mail_outline_outlined, color: Colors.black,),
                                  
                                  hintText: 'Enter Email',
                                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),

                                      borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                  
                                  // focusedBorder: OutlineInputBorder(
                                  //     borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(
                                          color: Color(hexColor('#A700FA')), width: 2.0)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Material(
                            elevation: 5,
                            shadowColor: Color(hexColor('#A700FA')),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: TextFormField(
                                obscureText: true,
                                validator: (val) {
                                  return val!.length > 6
                                      ? null
                                      : "Enter Password 6+ characters";
                                },
                                controller: passwordEditingController,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock_open_rounded, color: Colors.black,),
                                  hintText: 'Password',
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(
                                          color: Colors.black12, width: 2.0)),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(
                                          color: Color(hexColor('#A700FA')), width: 2.0)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: MediaQuery.of(context).size.width * 0.12,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => navigation()));
                      },
                      child: Text(
                        'Log In',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(hexColor('#00204C')),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        textStyle: TextStyle(fontSize: 2 * SizeConfig.blockSizeVertical,),
                      ),
                    ),
                  ),
                  
                  // ignore: prefer_const_literals_to_create_immutables
                  Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05, height: 55,),
                    SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  //SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Text('OR', textAlign: TextAlign.center,)
                  ),
                  //SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  ],),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: MediaQuery.of(context).size.width * 0.12,
                    child: ElevatedButton(
                        onPressed: () async {
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => signup()
                        ));
                        },
                        child: Text(
                          'Register as Student',
                          style: TextStyle(fontSize: 2 * SizeConfig.blockSizeVertical,),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(hexColor('#76C734')),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          textStyle: TextStyle(fontSize: 2 * SizeConfig.blockSizeVertical,),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
