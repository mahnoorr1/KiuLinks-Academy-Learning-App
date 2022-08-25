import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class whatsapp extends StatelessWidget {
  openwhatsApp() async {
    var whatsApp = "+923115953044";
    var whatsApp_url_android ="whatsapp://send?phone=" + whatsApp + "&text=Hello integrate hogya XD";
    // ignore: non_constant_identifier_names
    var whatsApp_url_ios = "http://wa.me/$whatsApp?text=${Uri.parse("Hellll")}";
    if (Platform.isIOS) {
      if (await canLaunch(whatsApp_url_ios)) {
        await launch(whatsApp_url_ios);
      }
    } else {
      if (await canLaunch(whatsApp_url_android)) {
        await launch(whatsApp_url_android);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return openwhatsApp();  
    }
}
