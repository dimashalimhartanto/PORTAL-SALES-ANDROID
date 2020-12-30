import 'package:PortalSales/screens/onboarding.dart';
import 'package:PortalSales/tab_promos/Datasource.dart';
import 'package:flutter/material.dart';

class PanduanIntiwid extends StatelessWidget {
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
                      MaterialPageRoute(
                          builder: (context) => OnboardingScreen()),
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
      body: ListView.builder(
          itemCount: DataSource.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                DataSource.questionAnswers[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(DataSource.questionAnswers[index]['answer']),
                )
              ],
            );
          }),
    );
  }
}
