import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:PortalSales/HOMEINTIWID/main_home.dart';

void main() {
  runApp(WorkloadDokter());
}

class WorkloadDokter extends StatefulWidget {
  WorkloadDokterState createState() => WorkloadDokterState();
}

class WorkloadDokterState extends State<WorkloadDokter> {
  final String url = 'http://192.168.1.4/report/uidpasient.php';
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
      title: 'Workload Dokter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('WORKLOAD DOKTER'),
            centerTitle: true,
            backgroundColor: Color(0xFF44B0BB),
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
                          data[index]['modality'],
                          style: TextStyle(fontSize: 14.0),
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
                                  'Body Part : ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  data[index]['body_part'],
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 9.0),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Series',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  data[index]['series_desc'],
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 9.0),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  ' Num Instance: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(data[index]['num_instance'])
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Cretatd Time : ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(data[index]['created_time'])
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
