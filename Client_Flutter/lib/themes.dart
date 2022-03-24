import 'package:flutter/material.dart';

Color primary = Colors.deepOrange;
Color secondary = Colors.greenAccent;
TextStyle getNormalFont(Color color)
{
  return TextStyle(fontFamily: "Poppins",fontSize: 15,fontWeight: FontWeight.w300,color: color);
}
TextStyle getMediumFont(Color color)
{
  return TextStyle(fontFamily: "Poppins",fontSize: 20,fontWeight: FontWeight.w500,color: color);
}
TextStyle getCustomFont(Color color,double size,FontWeight weight)
{
  return TextStyle(fontFamily: "Poppins",fontSize: size,fontWeight: weight,color: color);
}
