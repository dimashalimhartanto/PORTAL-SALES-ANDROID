import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF00838F);
const kPrimaryLightColor = Color(0xFF00838F);

const kTextColor = Color(0xFF0D1333);
const kBlueColor = Color(0xFF6E8AFA);
const kBestSellerColor = Color(0xFFFFD073);
const kGreenColor = Color(0xFF49CC96);
const primaryCyan = Color(0xFF1e92c1);

// My Text Styles
const kHeadingextStyle = TextStyle(
  fontSize: 28,
  color: kTextColor,
  fontWeight: FontWeight.bold,
);
const kSubheadingextStyle = TextStyle(
  fontSize: 24,
  color: Color(0xFF61688B),
  height: 2,
);

const kTitleTextStyle = TextStyle(
  fontSize: 20,
  color: kTextColor,
  fontWeight: FontWeight.bold,
);

const kSubtitleTextSyule = TextStyle(
  fontSize: 18,
  color: kTextColor,
  // fontWeight: FontWeight.bold,
);

const kGrabWhiteBoldMedium = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.white,
);

const kGrabWhiteRegularSmall = TextStyle(
  fontSize: 20,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.white,
);

const kGrabBlackBoldSmall = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.black,
);

const kGrabBlackBoldMedium = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.black,
);

const kGrabBlackBoldLarge = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.black,
);

const kGrabBlackRegularMedium = TextStyle(
  fontSize: 20,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.black,
);

const kGrabBlackRegularSmall = TextStyle(
  fontSize: 12,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.black,
);

fivePercentWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.05;
}

const kBackgroundColor = Color(0xFF202020);

percentHeight(BuildContext context, double percent) {
  return MediaQuery.of(context).size.height * percent;
}
