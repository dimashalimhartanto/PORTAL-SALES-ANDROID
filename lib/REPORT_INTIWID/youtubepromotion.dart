import 'package:flutter/material.dart';

// ------------ Youtube ------------

//Expanded(child: Container()),
//youtubePromotion()

Widget youtubePromotion() {
  return Column(
    children: <Widget>[_youtubeImage()],
  );
}

Widget _youtubeImage() {
  return Container(height: 150, child: Image.asset('assets/images/logo3.png'));
}
