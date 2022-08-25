import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiulinks_app/utilities/SizeConfig.dart';
import 'package:kiulinks_app/utilities/styles.dart';

class schedule extends StatefulWidget {
  @override
  _scheduleState createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {




  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextEditingController _date_controller = new TextEditingController();
    TextEditingController time_controller = new TextEditingController();
    DateTime _presentDate = DateTime.now();
    DateTime _selectedDate;
    return Material(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints(
                   maxHeight: height * 0.35,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/schedule img.png"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                ),
              ),
              SizedBox(height: height * 0.05),
              Text("Agenda tu clase", style: styles.heading1(context).copyWith(color: Colors.white),),
              SizedBox(height: height * 0.02,),
              Text("Vive, Aprende y Ama.", style: styles.heading4(context).copyWith(color: Colors.white),),
              Text("Es hora de hacer tus sueños realidad", style: styles.heading4(context).copyWith(color: Colors.white),),
              SizedBox(height: height * 0.06,),


              Container(
                width: width * 0.8,
                height: height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: styles.textField_radius(),
                  color: Colors.white,
                ),
                child: TextField(
                  focusNode: AlwaysDisabledFocusNode(),
                  decoration: InputDecoration(
                    icon: ImageIcon(AssetImage("assets/calender icon.png"), size: 10 * SizeConfig.blockSizeHorizontal,),
                    fillColor: Colors.white,
                    hintText: "${DateTime.now()}",
                    hintStyle: styles.heading3(context).copyWith(color: Colors.grey),
                  ),
                  controller: _date_controller,
                  onTap: () {
                    showDatePicker(
                        context: context,
                        initialDate: _presentDate,
                        firstDate: _presentDate,
                        lastDate: DateTime(_presentDate.year, _presentDate.month + 2, _presentDate.day),
                        builder: (context,picker){
                          return Theme(
                            //TODO: change colors
                            data: ThemeData.dark().copyWith(
                              colorScheme: ColorScheme.dark(
                                primary: Theme.of(context).primaryColor,
                                onPrimary: Colors.white,
                                surface: Theme.of(context).backgroundColor,
                                onSurface: Colors.black,
                              ),
                              dialogBackgroundColor:Theme.of(context).backgroundColor,
                            ),
                            child: picker!,);
                        })
                        .then((selectedDate) {
                      //TODO: handle selected date
                      if(selectedDate!=null){
                        _date_controller.text = selectedDate.toString();
                      }
                    });
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
