
import 'package:flutter/material.dart';

import 'SizeConfig.dart';

class styles{
  //used for main big text headings
  static TextStyle heading1(BuildContext context){
    return TextStyle(
        fontSize: 6.2 * SizeConfig.blockSizeHorizontal,
        fontWeight: FontWeight.w800,
        color: Theme.of(context).primaryColor
    );
  }

  //used for cards titles and medium headings
  static TextStyle heading2(BuildContext context){
      return TextStyle(
          fontSize: 5.2 * SizeConfig.blockSizeHorizontal,
          fontWeight: FontWeight.w800,
          color: Theme.of(context).primaryColor
      );
  }

  //used for plain subtext in cards
  static TextStyle heading3(BuildContext context){
    return TextStyle(
        fontSize: 4.2 * SizeConfig.blockSizeHorizontal,
        color: Theme.of(context).primaryColor
    );
  }

  //used for plain text in screen headers etc but not in cards
  static TextStyle heading4(BuildContext context){
    return TextStyle(
        fontSize: 5 * SizeConfig.blockSizeHorizontal,
        color: Theme.of(context).primaryColor
    );
  }

  //used for rounded corners of textfields
  static BorderRadius textField_radius(){
    return BorderRadius.circular(10);
  }

  //used for rounded corners of cards
  static BorderRadius cards_radius(){
    return BorderRadius.circular(30);
  }

}