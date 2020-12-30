import 'package:PortalSales/constant_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/body.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.cyan[900],
      centerTitle: false,
      title: Text(
        "PRODUCK AGFA",
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}
