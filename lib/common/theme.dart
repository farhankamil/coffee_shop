import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;

// 0x = untuk mengindikasikan kita akan menggunakan kode HEX
// ff = opacity 100%
// Color primaryColor = const Color(0xff6C5ECF);
// Color secondaryColor = const Color(0xff38ABBE);
// Color alertColor = const Color(0xffED6363);
// Color priceColor = const Color(0xff2C96F1);
Color backgroundColor1 = const Color(0xff131313);

Color backgroundColor2 = const Color(0xffC67C4E);
// Color backgroundColor3 = const Color(0xff242231);
// Color backgroundColor4 = const Color(0xff252836);
// Color backgroundColor5 = const Color(0xff2B2844);
// Color backgroundColor6 = const Color(0xffECEDEF);
Color primaryTextColor = const Color(0xffFFFFFF);
// Color secondaryTextColor = const Color(0xff999999);
// Color subtitleColor = const Color(0xff504F5E);
// Color transparentColor = Colors.transparent;
Color blackColor = const Color(0xff2F2D2C);
Color transparentColor = const Color.fromARGB(54, 255, 255, 255);
List<Color> colors = [Colors.black, Colors.transparent];
List<double> stops = [0.6, 1];
TextStyle primaryTextStyle = GoogleFonts.sora(
  color: primaryTextColor,
);

// TextStyle secondaryTextStyle = GoogleFonts.poppins(
//   color: secondaryTextColor,
// );

// TextStyle subtitleTextStyle = GoogleFonts.poppins(
//   color: subtitleColor,
// );

// TextStyle priceTextStyle = GoogleFonts.poppins(
//   color: priceColor,
// );

// TextStyle purpleTextStyle = GoogleFonts.poppins(
//   color: primaryColor,
// );

TextStyle blackTextStyle = GoogleFonts.sora(
  color: blackColor,
);

// TextStyle alertTextStyle = GoogleFonts.poppins(
//   color: alertColor,
// );

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
