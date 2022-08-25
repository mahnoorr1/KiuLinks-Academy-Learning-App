// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: camel_case_types
class signup extends StatelessWidget {


int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        ),
      body: Column(children: [
            Stack(children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.07,
                      color: Colors.black,
                      ),
                      Container(
                      alignment: Alignment.topCenter,

                      child: Container(
                        // margin: EdgeInsets.only(left: 120, bottom: 70),
                        child: Image.asset("assets/logo.png"),
                        width: MediaQuery.of(context).size.width * 0.24,
                        height: MediaQuery.of(context).size.width * 0.24,
                        ),
                    ),
                ],
              ),
              SizedBox(
                width: 350,
                child: Text('With our App you will find the perfect solution to learn a new language', 
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15
                  
                  ),
                textAlign: TextAlign.center,  
                ),
              ),
              Container(
                height: 85,
                width: 300,
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children: [
                  // ignore: prefer_const_literals_to_create_immutables
                  SizedBox(
                    width: 280,
                    height:40,
                    child: ListTile(
                      leading: Icon(Icons.contact_phone_sharp),
                      title: Text('Full Name:'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Material(
                            elevation: 5,
                            shadowColor: Color(hexColor('#A700FA')),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: SizedBox(
                              width: 265,
                              height: 40,
                              child: TextFormField(
                                validator: (val) {
                                  return RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(val!)
                                      ? null
                                      : "Please Enter Correct Email";
                                },
                                // controller: emailEditingController,
                                decoration: InputDecoration(
                                  
                                  hintText: 'Enter Name',
                                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),

                                      borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                  
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                ),
                              ),
                            ),
                          ),
                ],),
              ),
              Container(
                height: 85,
                width: 300,
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children: [
                  // ignore: prefer_const_literals_to_create_immutables
                  SizedBox(
                    width: 280,
                    height: 40,
                    child: ListTile(
                      leading: Icon(Icons.phone_android_rounded),
                      title: Text('Telephone:'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Material(
                            elevation: 5,
                            shadowColor: Color(hexColor('#A700FA')),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: SizedBox(
                              width: 265,
                              height: 40,
                              child: TextFormField(
                                validator: (val) {
                                  return RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(val!)
                                      ? null
                                      : "Please Enter Correct Email";
                                },
                                // controller: emailEditingController,
                                decoration: InputDecoration(
                                  
                                  hintText: 'Enter Phone',
                                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),

                                      borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                  
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                ),
                              ),
                            ),
                          ),
                ],),
              ),
              Container(
                height: 85,
                width: 300,
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children: [
                  // ignore: prefer_const_literals_to_create_immutables
                  SizedBox(
                    width: 280,
                    height: 40,
                    child: ListTile(
                      leading: Icon(Icons.mail_outline),
                      title: Text('Email:'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Material(
                            elevation: 5,
                            shadowColor: Color(hexColor('#A700FA')),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: SizedBox(
                              width: 265,
                              height: 40,
                              child: TextFormField(
                                validator: (val) {
                                  return RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(val!)
                                      ? null
                                      : "Please Enter Correct Email";
                                },
                                // controller: emailEditingController,
                                decoration: InputDecoration(
                                  
                                  hintText: 'Enter email',
                                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),

                                      borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                  
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                ),
                              ),
                            ),
                          ),
                ],),
              ),
              Container(
                height: 85,
                width: 300,
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children: [
                  // ignore: prefer_const_literals_to_create_immutables
                  SizedBox(
                    width: 280,
                    height: 40,
                    child: ListTile(
                      leading: Icon(Icons.lock_outline_sharp),
                      title: Text('Password:'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Material(
                            elevation: 5,
                            shadowColor: Color(hexColor('#A700FA')),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: SizedBox(
                              width: 265,
                              height: 40,
                              child: TextFormField(
                                validator: (val) {
                                  return RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(val!)
                                      ? null
                                      : "Please Enter Correct Email";
                                },
                                // controller: emailEditingController,
                                decoration: InputDecoration(
                                  
                                  hintText: 'Enter Password',
                                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),

                                      borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                  
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                ),
                              ),
                            ),
                          ),
                ],),
              ),
              Container(
                height: 85,
                width: 300,
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children: [
                  // ignore: prefer_const_literals_to_create_immutables
                  SizedBox(
                    width: 280,
                    height: 40,
                    child: ListTile(
                      leading: Icon(Icons.calendar_today_outlined),
                      title: Text('Date of birth:'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Material(
                            elevation: 5,
                            shadowColor: Color(hexColor('#A700FA')),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: SizedBox(
                              width: 265,
                              height: 40,
                              child: TextFormField(
                                validator: (val) {
                                  return RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(val!)
                                      ? null
                                      : "Please Enter Correct Email";
                                },
                                // controller: emailEditingController,
                                decoration: InputDecoration(
                                  
                                  hintText: 'Click to select date',
                                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),

                                      borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                  
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                ),
                              ),
                            ),
                          ),
                          
                          
                ],),
              ),
              SizedBox(height:13),
              SizedBox(
                width: 150,
                height: 35,
                child: ElevatedButton(
                    onPressed: () async {
                      Navigator.push(context, MaterialPageRoute(
                      builder: (context) => signup()
                    ));
                    },
                    child: Text(
                      'Submit',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(hexColor('#76C734')),
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25))),
                      textStyle: TextStyle(
                        fontSize: 15,
                      ),
                    )),
              ),

        ],
      ),
    );
  }
}