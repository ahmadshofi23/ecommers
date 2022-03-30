import 'package:ecommers/utils/constant.dart';
import 'package:flutter/material.dart';

ThemeData thema() {
  return ThemeData(
    appBarTheme: appbarTheme(),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    inputDecorationTheme: inputDecorationThema(),
    textTheme: textThema(),
  );
}

InputDecorationTheme inputDecorationThema() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 39, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textThema() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appbarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      // ignore: deprecated_member_use
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black));
}
