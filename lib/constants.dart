import 'package:flutter/material.dart';

const kTextStyle = TextStyle(
    color: Color(0xff000000),
    fontWeight: FontWeight.w700,
    fontSize: 12.5,
    fontFamily: 'Lato',
    fontStyle: FontStyle.normal);
const kContainerColor = Color(0xffF4F4F4);
const kTextStyle2 = TextStyle(
    fontSize: 10.0, fontWeight: FontWeight.w400, color: Color(0xff808080));
const kIconColor = Color(0xff858585);
const kIconColor2 = Color(0xff000000);
const kAppbarColor = Color(0xffFCFCFC);

const kIconSize = 15.0;

var kContainerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    border: Border.all(color: const Color.fromARGB(0, 1, 169, 166)));
const kBottomNavBarDecoration = BorderRadius.only(
    bottomLeft: Radius.circular(40.50), bottomRight: Radius.circular(40.50));

const kTextFieldInputDecoration = InputDecoration(
  border: InputBorder.none,
  filled: true,
  hintStyle: TextStyle(color: Colors.grey),
  hintText: "City, Zip, Address in US",
  hintTextDirection: TextDirection.ltr,
  fillColor: Colors.white70,
  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8.0),
);

var kTextfieldContiner = BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(20.0));
