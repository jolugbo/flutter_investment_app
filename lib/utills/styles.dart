import 'dart:ui';

import 'package:flutter/material.dart';

Color accent = Color(0xFFFFFFFF);
Color paydayOrange = Color(0xFFFF8D07);
Color paydayGreen = Color(0xFF00A843);
Color paydayGreen2 = Color(0xFF9DE700);
Color paydayDeepGreen = Color(0xFF008234);
Color paydayBlue = Color(0xFF00A2F3);
Color paydayBlue2 = Color(0xFF07A6FF);
Color paydayPurple = Color(0xFF794D92);
Color paydayPurple2 = Color(0xFFE6DEF4);
Color paydayPink = Color(0xFFDD4CF4);
Color paydayGray = Color(0xFF979797);
Color paydayOverlayLightPurple = Color.fromRGBO(0,0,0,0.53);
Color paydayLightPurple = Color.fromRGBO(121,77,146,0.1);//(0xFF794d921a);
Color paydayLightGray = Color(0xFFC6C6C6);
Color paydayLightGray2 = Color(0xFFF2EDF4);
Color paydayDark = Color(0xFF434343);
Color paydayYellow = Color(0xFFFFE600);

String generalFont = 'CM Sans Serif';

final lightHeaderStyle = TextStyle(
  color: accent,
  fontFamily: generalFont,
  fontSize: 22.0,
  height: 1.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final purple14Style = TextStyle(
  color: paydayPurple,
  fontFamily: generalFont,
  fontSize: 14.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final purple18Style = TextStyle(
  color: paydayPurple,
  fontFamily: generalFont,
  fontSize: 18.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final purple22Style = TextStyle(
  color: paydayPurple,
  fontFamily: generalFont,
  fontSize: 22.0,
  height: 1.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final purple24Style = TextStyle(
  color: paydayPurple,
  fontFamily: generalFont,
  fontSize: 24.0,
  height: 1.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final purple28Style = TextStyle(
  color: paydayPurple,
  fontFamily: generalFont,
  fontSize: 28.0,
  height: 1.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final darkHeaderStyle = TextStyle(
  color: paydayDark,
  fontFamily: generalFont,
  fontSize: 32.0,
  height: 1.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final dark36Style = TextStyle(
  color: paydayDark,
  fontFamily: generalFont,
  fontSize: 32.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final purpleThickStyle = TextStyle(
  color: paydayPurple,
  fontFamily: generalFont,
  fontSize: 20.0,
  height: 1.2,
  //fontStyle: FontStyle.,
  fontWeight: FontWeight.bold,
);
final lightBodyStyle = TextStyle(
  color: accent,
  fontFamily: generalFont,
  fontSize: 14.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final purple16Style = TextStyle(
  color: paydayPurple,
  fontFamily: generalFont,
  fontSize: 16.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final purple12Style = TextStyle(
  color: paydayPurple,
  fontFamily: generalFont,
  fontSize: 12.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final purpleSmallerBodyStyle = TextStyle(
  color: paydayPurple,
  fontFamily: generalFont,
  fontSize: 14.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final dark10Style = TextStyle(
  color: paydayDark,
  fontFamily: generalFont,
  fontSize: 10.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final dark14Style = TextStyle(
  color: paydayDark,
  fontFamily: generalFont,
  fontSize: 14.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final dark16Style = TextStyle(
  color: paydayDark,
  fontFamily: generalFont,
  fontSize: 16.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final dark18Style = TextStyle(
  color: paydayDark,
  fontFamily: generalFont,
  fontSize: 18.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final dark15Style = TextStyle(
  color: paydayDark,
  fontFamily: generalFont,
  fontSize: 15.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final dark24Style = TextStyle(
  color: paydayDark,
  fontFamily: generalFont,
  fontSize: 24.0,
  height: 1.2,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final dark22Style = TextStyle(
  color: paydayDark,
  fontFamily: generalFont,
  fontSize: 22.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final green18Style = TextStyle(
  color: paydayGreen,
  fontFamily: generalFont,
  fontSize: 18.0,
  height: 1.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final greenBodyStyle = TextStyle(
  color: paydayGreen,
  fontFamily: generalFont,
  fontSize: 16.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final darkMediumStyle = TextStyle(
  color: paydayDark,
  fontFamily: generalFont,
  fontSize: 20.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final buttonDefaultStyle = TextStyle(
  color: paydayGreen,
  fontFamily: generalFont,
  fontSize: 14.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final buttonLightStyle = TextStyle(
  color: accent,
  fontFamily: generalFont,
  fontSize: 14.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final buttonDarkStyle = TextStyle(
  color: paydayDark,
  fontFamily: generalFont,
  fontSize: 14.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final green14Style = TextStyle(
  color: paydayGreen,
  fontFamily: generalFont,
  fontSize: 14.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final white14Style = TextStyle(
  color: accent,
  fontFamily: generalFont,
  fontSize: 14.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final gray14Style = TextStyle(
  color: paydayGray,
  fontFamily: generalFont,
  fontSize: 14.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final gray16Style = TextStyle(
  color: paydayGray,
  fontFamily: generalFont,
  fontSize: 14.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final gray12Style = TextStyle(
  color: paydayGray,
  fontFamily: generalFont,
  fontSize: 12.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final orange14Style = TextStyle(
  color: paydayOrange,
  fontFamily: generalFont,
  fontSize: 14.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final footerGrayStyle = TextStyle(
  color: paydayGray,
  fontFamily: generalFont,
  fontSize: 12.0,
  height: 1,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);
final footerGreenStyle = TextStyle(
    color: paydayGreen,
    fontFamily: generalFont,
    fontSize: 12.0,
    height: 1,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.underline
);
final footerGreenBiggerStyle = TextStyle(
    color: paydayGreen,
    fontFamily: generalFont,
    fontSize: 18.0,
    height: 1,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.underline
);
final securityStyle = TextStyle(
  color: accent,
  fontFamily: 'CM Sans Serif',
  fontSize: 20.0,
  height: 1.5,
  fontWeight: FontWeight.w900,
);
final securityStyle2 = TextStyle(
  //color: landingBG,
  fontFamily: 'CM Sans Serif',
  fontSize: 18.0,
  height: 1.5,
  fontWeight: FontWeight.w900,
);
final tokenBox = BoxDecoration(
  color: paydayDeepGreen,
);
final tokenButtons = BoxDecoration(
  shape: BoxShape.circle,
  border: Border.all(
    color: accent,
    //width: 5.0,
  ),
);
final buttonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10.0),
);
final textFieldDecoration = InputDecoration(
enabledBorder: UnderlineInputBorder(
borderSide: BorderSide(color: paydayGreen),
),
focusedBorder: UnderlineInputBorder(
borderSide: BorderSide(color: paydayGreen),
),
border: UnderlineInputBorder(
borderSide: BorderSide(color: paydayGreen),
));