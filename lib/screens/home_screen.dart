import 'package:PortalSales/constant_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenBaru extends StatefulWidget {
  @override
  _HomeScreenBaruState createState() => _HomeScreenBaruState();
}

class _HomeScreenBaruState extends State<HomeScreenBaru> {
  @override
  Widget build(BuildContext context) {
    var cards;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            // CUSTOMER APP BAR

            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      print('gear Tapped !');
                    },
                    child: SvgPicture.asset("assets/svg/icon_chat.svg"),
                  ),
                  Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/userImage1.jpeg"))),
                  )
                ],
              ),
            ),

            //card section
            SizedBox(
              height: 25,
            ),

            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Good Morning',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: kBlackColor,
                    ),
                  ),
                  Text(
                    'Dimas Halim Hartanto',
                    style: GoogleFonts.inter(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  )
                ],
              ),
            ),

            Container(
              height: 199,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16, right: 6),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 199,
                      width: 344,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color(cards[index].cardBackground),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
