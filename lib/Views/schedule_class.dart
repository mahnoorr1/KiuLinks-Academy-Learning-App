import 'package:flutter/material.dart';

class scheduleClass extends StatefulWidget {
  @override
  _scheduleClassState createState() => _scheduleClassState();
}

class _scheduleClassState extends State<scheduleClass> {
  @override

  TextEditingController _dateController = TextEditingController();
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
           Container(
             alignment: Alignment.topCenter,
             margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.26),
              child: Text(
                "Schedule you Free Class ",
                style: Theme.of(context).textTheme.headline5,
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.38, left: MediaQuery.of(context).size.width*0.05),
            child: Text(
              "Select Date:",
              style: Theme.of(context).textTheme.headline5,
            )
          ),
          Container(
            child: Row(
              children: [
                Expanded(child: Icon(Icons.calendar_today_sharp)),
                Expanded(child: TextFormField(
                  controller: _dateController,
                  decoration: InputDecoration(
                    labelText: "Date of birth",
                    hintText: "Ex. Insert your dob",),
                  onTap: () async{
                    DateTime ? date = DateTime(1900);
                    FocusScope.of(context).requestFocus(new FocusNode());

                    date = await showDatePicker(
                        context: context,
                        initialDate:DateTime.now(),
                        firstDate:DateTime(1900),
                        lastDate: DateTime(2100));

                    _dateController.text = date.toString();},))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
