import 'package:flutter/material.dart';
import 'package:PortalSales/MENU-SALES/constant.dart';

class IntiwidIconMenu extends StatelessWidget {
  const IntiwidIconMenu({
    Key key,
    @required this.title,
    @required this.image,
    this.size = 40,
  }) : super(key: key);

  final String title;
  final String image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image(
          height: size,
          image: AssetImage(image),
        ),
        SizedBox(height: 5),
        Text(title, style: kGrabBlackRegularSmall.copyWith(fontSize: 15)),
      ],
    );
  }
}
