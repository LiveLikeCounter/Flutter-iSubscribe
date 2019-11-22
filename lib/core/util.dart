import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomColors 
{
  static const Color BackgroundColor = Color.fromRGBO(240, 244, 247, 1);

  static const Color Purple = Color.fromRGBO(126, 0, 252, 1);
  static const Color Purple02 = Color.fromRGBO(126, 0, 252, 0.02);
  static const Color PurpleLight = Color.fromRGBO(243, 229, 255, 1);
  static const Color PurpleLightText = Color.fromRGBO(187, 184, 234, 1);
  
  static const Color BlueLightBorder = Color.fromRGBO(192, 213, 229, 1);
  static const Color BlueIcon = Color.fromRGBO(0, 122, 255, 1);
  static const Color GreyText = Color.fromRGBO(129, 129, 129, 1);
  static const Color GreyTextLight = Color.fromRGBO(201, 200, 200, 1);
  static const Color GreyTextLightExtra = Color.fromRGBO(235, 235, 235, 1);
  static const Color GreenText = Color.fromRGBO(0, 175, 81, 1);

  static const Color CardVisaPurple = Color.fromRGBO(206, 54, 183, 1);
  static const Color CardVisaIndigo = Color.fromRGBO(50, 40, 123, 1);
  static const Color CardMastercardGrey = Color.fromRGBO(132, 132, 132, 1);
  static const Color CardMastercardBlack = Color.fromRGBO(1, 1, 2, 1);
  static const Color CardVisaPurple2 = Color.fromRGBO(121, 75, 255, 1);
  static const Color CardVisaPurple3 = Color.fromRGBO(50, 40, 123, 1);
  static const Color CardBlueLight = Color.fromRGBO(83, 166, 248, 1);
  static const Color CardBlueDark = Color.fromRGBO(12, 53, 83, 1);

}

class CustomTextStyles 
{
  static const TextStyle ButtonText = TextStyle(fontWeight: FontWeight.w500, fontSize: 20);
  static const TextStyle Purple16 = TextStyle(fontSize: 16, color: CustomColors.Purple, letterSpacing: 1);
  static const TextStyle Grey16 = TextStyle(fontSize: 16, color: CustomColors.GreyText, letterSpacing: 1);
  static const TextStyle LargePurpleLight = TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: CustomColors.PurpleLightText);
  
  static const TextStyle OnBoarding = TextStyle(fontSize: 25, fontFamily: 'Nunitosans', fontWeight: FontWeight.w300);
  
  static const TextStyle White16 = TextStyle(color: Colors.white, fontSize: 16);
  static const TextStyle Bold14 = TextStyle(fontSize: 14, letterSpacing: 1, fontWeight: FontWeight.w600);
  static const TextStyle SemiBold18 = TextStyle(fontWeight: FontWeight.w500, fontSize: 18);
  static const TextStyle GreyText16 = TextStyle(fontSize: 16, color: CustomColors.GreyText);

  static const TextStyle SubscriptionNumber = TextStyle(fontSize: 12, fontWeight: FontWeight.w800);
  static const TextStyle CardHolder = TextStyle(color: Colors.white54, letterSpacing: 0.3, fontSize: 14);
  static const TextStyle CardName = TextStyle(color: Colors.white, fontSize: 14, letterSpacing: 0.3);
  static const TextStyle CardNumber = TextStyle(color: Colors.white, fontFamily: 'Saira', fontWeight: FontWeight.w500, letterSpacing: 5.5);
}

class CustomIcons
{
    static const IconData addIcon = const IconData(62601, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage);
    static const IconData searchIcon = const IconData(62629, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage);
}

class CustomImages
{
    static const String starFilled = 'assets/images/icon-star-filled.png';
    static const String starEmpty = 'assets/images/icon-star-empty.png';
}




