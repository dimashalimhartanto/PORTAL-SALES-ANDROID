import 'package:PortalSales/MENU-SALES/constant.dart';
import 'package:PortalSales/MENU-SALES/panduan_intiwid.dart';
import 'package:PortalSales/screens/onboarding.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login_screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool isKeyboardShowing = MediaQuery.of(context).viewInsets.bottom > 0;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).viewPadding.top,
                left: fivePercentWidth(context),
                // bottom: 50,
              ),
              child: Opacity(
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: isKeyboardShowing
                      ? () {
                          FocusScope.of(context).requestFocus(FocusNode());
                        }
                      : null,
                ),
                opacity: isKeyboardShowing ? 1.0 : 0.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: fivePercentWidth(context),
              ),
              child: Opacity(
                child: Image(
                  width: 190,
                  image: AssetImage("assets/images/logo3.png"),
                ),
                opacity: isKeyboardShowing ? 0.0 : 1.0,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                left: fivePercentWidth(context),
              ),
              child: Text(
                "Welcome To\n Intiwid Rispacs",
                style: kGrabWhiteBoldMedium,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: fivePercentWidth(context),
              ),
              child: Text(
                "V.1.12",
                style: kGrabWhiteRegularSmall,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(
                left: fivePercentWidth(context),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10),
                ],
              ),
            ),
            Spacer(flex: 2),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                bottom: isKeyboardShowing
                    ? 0
                    : MediaQuery.of(context).viewPadding.bottom,
              ),
              color: isKeyboardShowing
                  ? Theme.of(context).primaryColor
                  : Colors.transparent,
              child: isKeyboardShowing
                  ? FlatButton(
                      child: Center(
                          child: Text(
                        "Login",
                        style: kGrabWhiteRegularSmall,
                      )),
                      onPressed: () {},
                    )
                  : Row(
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OnboardingScreen()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 20,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 15,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF85CBB3),
                                boxShadow: [
                                  BoxShadow(
                                      // blurRadius: 10,
                                      offset: Offset.fromDirection(1)),
                                ],
                              ),
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image(
                                        width: 30,
                                        image: AssetImage(
                                            "assets/images/rispacs.png"),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Let's Start",
                                    style: kGrabWhiteRegularSmall.copyWith(
                                        fontSize: 18),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PanduanIntiwid()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 20,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 15,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF85CBB3),
                                boxShadow: [
                                  BoxShadow(
                                      // blurRadius: 10,
                                      offset: Offset.fromDirection(1)),
                                ],
                              ),
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PanduanIntiwid()),
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image(
                                        width: 30,
                                        image: AssetImage(
                                            "assets/images/rispacs.png"),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Read More ?",
                                    style: kGrabWhiteRegularSmall.copyWith(
                                        fontSize: 18),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
