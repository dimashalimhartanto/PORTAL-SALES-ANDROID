import 'package:flutter/material.dart';
import 'package:PortalSales/home_screen_utama.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

class BlogContent extends StatefulWidget {
  final String webHTML;
  BlogContent({this.webHTML});
  @override
  _BlogContent createState() => _BlogContent();
}

class _BlogContent extends State<BlogContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Material(
            elevation: 2,
            child: Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: Image.asset(
                      'assets/images/logo3.png',
                    ),
                  ),
                  Stack(children: <Widget>[
                    Icon(
                      Icons.notifications_none,
                      color: Colors.grey[400],
                    ),
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: Icon(
                        Icons.brightness_1,
                        size: 8.0,
                        color: Color(0xFFFF5A5F),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
        body: _webViewWidget(widget.webHTML));
  }

  Widget _webViewWidget(String htmlURL) {
    return SingleChildScrollView(
      child: Html(
        data: htmlURL,
        style: {
          "body": Style(
            fontSize: FontSize(22.0),
          ),
        },
      ),
    );
  }
}
