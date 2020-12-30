import 'dart:convert';

import 'package:PortalSales/MENU-SALES/laporan_kunjungan_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
      home: LaporanKunjunganHarian(),
      debugShowCheckedModeBanner: false,
    ));

class LaporanKunjunganHarian extends StatefulWidget {
  @override
  LaporanKunjunganHarianState createState() => LaporanKunjunganHarianState();
}

class LaporanKunjunganHarianState extends State<LaporanKunjunganHarian> {
  List<UsersDetail> _list = [];
  var loading = false;
  Future<Null> _fetchData() async {
    setState(() {
      loading = true;
    });
    final response = await http.get("http://localhost/apiServer/getdata.php");
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        for (Map i in data) {
          _list.add(UsersDetail.fromJson(i));
        }
        loading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Container(
        child: loading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _list.length,
                itemBuilder: (context, i) {
                  final x = _list[i];
                  return Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(x.namaKunjungan),
                        Text(x.hpkunjungan),
                        Text(x.emailKunjungan),
                        Text(x.jabatanKunjungan),
                        Text(x.rsKunjungan),
                        Text(x.reqKunjungan),
                        Text(x.hasilKunjungan),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Address",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(x.address.street),
                        Text(x.address.suite),
                        Text(x.address.city),
                        Text(x.address.zipcode),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Company",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(x.company.name),
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
