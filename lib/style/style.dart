import 'package:flutter/material.dart';
import 'package:trip/style/colors.dart';

TextStyle titleStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 18.0,
  fontWeight: FontWeight.w800,
  color: txtColor,
);
TextStyle descriptionStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 12.0,
  fontWeight: FontWeight.w200,
  color: txtColor,
);
ButtonStyle startBtnStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(wlcBtnColor),
  padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
  elevation: MaterialStateProperty.all(12),
  shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
  // shadowColor:
  //     MaterialStateProperty.all(Theme.of(context).colorScheme.onSurface),
);
TextStyle startBtnTextStyle = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 14.0,
  fontWeight: FontWeight.w600,
);
BoxDecoration userImg = const BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/images/ali.jpg'),
    fit: BoxFit.fill,
  ),
  shape: BoxShape.circle,
);
TextStyle categoriesStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 14.0,
  fontWeight: FontWeight.w800,
  color: txtColor,
);
TextStyle recTitlesStyle = const TextStyle(
    color: Colors.white,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.bold);
TextStyle recSubtitlesStyle = const TextStyle(
    color: Colors.white,
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontWeight: FontWeight.normal);

TextStyle trendTitleStyle = TextStyle(
    color: txtColor,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.bold);
TextStyle trendSubtitleStyle = TextStyle(
    color: txtColor,
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontWeight: FontWeight.normal);
