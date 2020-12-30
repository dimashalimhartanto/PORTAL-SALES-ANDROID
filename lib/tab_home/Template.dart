import 'package:PortalSales/home_screen_utama.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:PortalSales/tab_home/intiwid_icon_menu.dart';
import 'package:PortalSales/REPORT_INTIWID/bacatemplatedokter.dart';
import 'package:PortalSales/REPORT_INTIWID/main_workload.dart';

void main() {
  runApp(TemplateDokter());
}

class TemplateDokter extends StatefulWidget {
  TemplateDokterState createState() => TemplateDokterState();
}

class TemplateDokterState extends State<TemplateDokter> {
  final String url = 'http://10.0.2.2/report/template.php';
  List data;

  Future<String> getData() async {
    var res = await http
        .get(Uri.encodeFull(url), headers: {'accept': 'application/json'});
    setState(() {
      var content = json.decode(res.body);
      data = content['data'];
    });
    return 'success!';
  }

  Widget build(context) {
    return MaterialApp(
      title: 'Template Dokter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                        color: Color(0xFFFF5A5F),
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
          body: Container(
            margin: EdgeInsets.all(10.0),
            child: ListView.builder(
              itemCount: data == null ? 0 : data.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return Container(
                    child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Text(
                          data[index]['template_id'],
                          style: TextStyle(fontSize: 30.0),
                        ),
                        title: Text(
                          data[index]['title'],
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          children: <Widget>[
                            // Row(
                            //   children: <Widget>[
                            //     Text(
                            //       'Fill : ',
                            //       style: TextStyle(fontWeight: FontWeight.bold),
                            //     ),
                            //     Text(
                            //       data[index]['fill'],
                            //       style: TextStyle(
                            //           fontStyle: FontStyle.italic,
                            //           fontSize: 15.0),
                            //     ),
                            //   ],
                            // ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Username : ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(data[index]['username'])
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BacaTemplateDokter()),
                                    );
                                  },
                                  child: IntiwidIconMenu(
                                    title: "Lihat Template",
                                    image: "assets/images/new.png",
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetailHomePasien()),
                                    );
                                  },
                                  child: IntiwidIconMenu(
                                    title: "Workload Dokter",
                                    image: "assets/images/workloadris.png",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ));
              },
            ),
          )),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }
}
