import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/constants/color_constants.dart';

//Style for title
var kTitleStyle = GoogleFonts.lora(
  fontWeight: FontWeight.w700,
  color: kTitleColor,
  fontSize: 16,
);

// style for every popup screen title
var kScreenTitleStyle = GoogleFonts.roboto(
  fontSize: 24,
  fontWeight: FontWeight.w600,
);

//Discount Section
var kMoreDiscountStyle = GoogleFonts.roboto(
  fontSize: 12,
  fontWeight: FontWeight.w700,
  color: kBlueColor,
);

var kPopularDestinationTitleStyle = GoogleFonts.roboto(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: kCardTitleColor,
);

var kPopularDestinationSubtitleStyle = GoogleFonts.roboto(
  fontSize: 10,
  fontWeight: FontWeight.w500,
  color: kCardSubtitleColor,
);

var kTravelLogTitleStyle = GoogleFonts.roboto(
  fontSize: 14,
  fontWeight: FontWeight.w900,
  color: kBackgroundColor,
);

var kTravelLogContentStyle = GoogleFonts.roboto(
  fontSize: 10,
  fontWeight: FontWeight.w500,
  color: kTitleColor,
);

var kTravelLogPlaceStyle = GoogleFonts.roboto(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: kBlueColor,
);

var kServiceTitleStyle = GoogleFonts.roboto(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: kTitleColor,
);

var kServiceSubtitleStyle = GoogleFonts.roboto(
  fontSize: 10,
  fontWeight: FontWeight.w400,
  color: kSubtitleColor,
);

const kTextFieldDecoration = InputDecoration(
  border: InputBorder.none,
  hintText: 'Location Search',
  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
  prefixIcon: Icon(
    FontAwesomeIcons.searchengin,
    size: 20,
    color: Colors.grey,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),

  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(32.0)),
  // ),
  // enabledBorder: OutlineInputBorder(
  //   borderSide: BorderSide(color: kBlueColor, width: 1.0),
  //   borderRadius: BorderRadius.all(Radius.circular(32.0)),
  // ),
  // focusedBorder: OutlineInputBorder(
  //   borderSide: BorderSide(color: kBlueColor, width: 2.0),
  //   borderRadius: BorderRadius.all(Radius.circular(32.0)),
  // ),
);

const kLoginTextFieldDecoration = InputDecoration(
  border: InputBorder.none,
  labelText: '',
  labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(32.0)),
  // ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kBlueColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kBlueColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kSignupTextFieldDecoration = InputDecoration(
  border: InputBorder.none,
  labelText: '',
  labelStyle: TextStyle(color: Colors.white54, fontSize: 20),
  hintStyle: TextStyle(color: Colors.white54, fontSize: 15),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(32.0)),
  // ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kBackgroundColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kBackgroundColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
