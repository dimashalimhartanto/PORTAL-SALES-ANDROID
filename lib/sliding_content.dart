import 'package:PortalSales/MENU-SALES/constant.dart';
import 'package:flutter/material.dart';

Widget slidingContent(ScrollController controller) {
  return Container(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 24,
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            controller: controller,
            children: <Widget>[
              SizedBox(
                height: 24,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Menu Dokter',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  Spacer(),
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => CountryPage()),
                    //   );
                    // },
                    child: Container(
                      decoration: BoxDecoration(
                          color: primaryCyan,
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'INTIWID RISPACS',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.transparent),
                          child: Align(
                            child: Image.asset(
                              'assets/images/dcmsend.png',
                              width: 50,
                              height: 51,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Dicomsend',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.transparent),
                          child: Align(
                            child: Image.asset(
                              'assets/images/pw2.png',
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Change\nPassword',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.transparent),
                          child: Align(
                            child: Image.asset(
                              'assets/images/bahasa.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Language',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.transparent),
                          child: Align(
                            child: Image.asset(
                              'assets/images/recycle.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Recycle\nBin',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.transparent),
                          child: Align(
                            child: Image.asset(
                              'assets/images/query.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Query',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.transparent),
                          child: Align(
                            child: Image.asset(
                              'assets/images/workloadris.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Expertise',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.transparent),
                          child: Align(
                            child: Image.asset(
                              'assets/images/file.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Pdf',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.transparent),
                          child: Align(
                            child: Image.asset(
                              'assets/images/eye.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'WebView',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Menu Dokter',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  Spacer(),
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => CountryPage()),
                    //   );
                    // },
                    child: Container(
                      decoration: BoxDecoration(
                          color: primaryCyan,
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'INTIWID RISPACS',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
