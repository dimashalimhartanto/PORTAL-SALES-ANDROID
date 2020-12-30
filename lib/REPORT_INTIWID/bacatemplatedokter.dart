import 'package:flutter/material.dart';
import 'package:PortalSales/REPORT_INTIWID/bloglist.dart';
import 'package:PortalSales/REPORT_INTIWID/youtubepromotion.dart';
import 'package:PortalSales/tab_home/Radiographer.dart';

void main() => runApp(BacaTemplateDokter());

class BacaTemplateDokter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.transparent,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool firstButtonAttention = false;
  bool secondButtonAttention = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Material(
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReportWorklist()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xFFFF5A5F),
                  ),
                ),
                SizedBox(
                  height: 90,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _highlightButton(0, Colors.lightBlue[900]),
            youtubePromotion()
          ],
        ),
      ),
    );
  }

  Widget _highlightButton(int index, Color highBGColor) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: new RaisedButton(
        child: Container(
          width: 300,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Icon(
                  Icons.mobile_screen_share,
                  size: 36,
                  color: _highlightColor(index),
                ),
              ),
              Text(
                'Lihat Template',
                style: TextStyle(
                  fontSize: 26,
                  color: _highlightColor(
                      index), //firstButtonAttention ? Colors.grey[300] : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        textColor: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        highlightColor: highBGColor,
        highlightElevation: 14.0,
        elevation: 10,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => BlogList())),
        onHighlightChanged: (value) {
          setState(() {
            switch (index) {
              case 0:
                firstButtonAttention = value;
                break;
              // case 1:
              //   secondButtonAttention = value;
              //   break;
            }
          });
        },
      ),
    );
  }

  Color _highlightColor(int index) {
    Color returnValue;
    switch (index) {
      case 0:
        {
          returnValue = firstButtonAttention ? Colors.grey[300] : Colors.black;
        }
        break;
      case 1:
        {
          returnValue = secondButtonAttention ? Colors.grey[300] : Colors.black;
        }
        break;
    }
    return returnValue;
  }
}
