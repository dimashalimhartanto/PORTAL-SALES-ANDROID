import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:PortalSales/HOMEINTIWID/main_home.dart';
import 'package:PortalSales/home_screen_utama.dart';

void main() {
  runApp(HomeWorklist());
}

class HomeWorklist extends StatefulWidget {
  HomeWorklistState createState() => HomeWorklistState();
}

class HomeWorklistState extends State<HomeWorklist> {
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
      title: 'Home',
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
                        style: TextStyle(fontSize: 20.0),
                      ),
                      // title: Text(
                      //   data[index]['name'],
                      //   style: TextStyle(
                      //       fontSize: 21.0, fontWeight: FontWeight.bold),
                      // ),
                      subtitle: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Name : ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                data[index]['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 13.2),
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
                            child: const Text('LIHAT PASIENT'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailHomePasien()),
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
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }
}
