import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:PortalSales/REPORT_INTIWID/bacatemplatedokter.dart';
import 'package:PortalSales/home_screen_utama.dart';
import 'package:PortalSales/main_html.dart';

void main() {
  runApp(ReportWorklist());
}

class ReportWorklist extends StatefulWidget {
  ReportWorklistState createState() => ReportWorklistState();
}

class ReportWorklistState extends State<ReportWorklist> {
  final String url = 'http://10.0.2.2/report/Report.php';
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
      title: 'Worklist Dokter',
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
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Text(
                          data[index]['xray_type_code'],
                          style: TextStyle(fontSize: 30.0),
                        ),
                        title: Text(
                          data[index]['name'],
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'Name Patient : ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  data[index]['name'],
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 15.0),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Tanggal Lahir : ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(data[index]['birth_date'])
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Sex : ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(data[index]['sex'])
                              ],
                            ),
                          ],
                        ),
                      ),
                      ButtonTheme.bar(
                        child: ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text('LIHAT TEMPLATE'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BacaTemplateDokter()),
                                );
                              },
                            ),
                            FlatButton(
                              child: const Text('EDIT TAMPLATE'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WorklistDokter()),
                                );
                              },
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
    super.initState();
    this.getData();
  }
}
