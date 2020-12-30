import 'dart:ui';

import 'package:PortalSales/MENU-SALES/INPUT-KUNJUNGAN.dart';
import 'package:PortalSales/tab_home/home_utama.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class InputKunjungan extends StatefulWidget {
  @override
  _InputKunjunganState createState() => new _InputKunjunganState();
}

class _InputKunjunganState extends State<InputKunjungan> {
  TextEditingController controllerNamaKunjungan = new TextEditingController();
  TextEditingController controllerHpKunjungan = new TextEditingController();
  TextEditingController controllerEmailKunjungan = new TextEditingController();
  TextEditingController controllerJabatanKunjungan =
      new TextEditingController();
  TextEditingController controllerReqKunjungan = new TextEditingController();
  TextEditingController controllerHasilKunjungan = new TextEditingController();

  void addInputKunjungan() {
    var url = "http://localhost/apiServer/add_input_kunjungan.php";

    http.post(url, body: {
      "nama_kunjungan": controllerNamaKunjungan.text,
      "hp_kunjungan": controllerHpKunjungan.text,
      "email_kunjungan": controllerEmailKunjungan.text,
      "jabatan_kunjungan": controllerJabatanKunjungan.text,
      "req_kunjungan": controllerReqKunjungan.text,
      "hasil_kunjungan": controllerHasilKunjungan.text,
    });
  }

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
                      MaterialPageRoute(builder: (context) => HomeContent()),
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
                    'assets/images/intiwid.png',
                  ),
                ),
                Stack(
                  children: <Widget>[
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Full Name Customer",
                  labelText: "Full Name Customer",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Mobile/HP",
                    labelText: "Mobile/HP",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0))),
              ),
              new Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Jabatan/Divisi",
                  labelText: "Jabatan/Divisi",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Inquery/Question/Request",
                  labelText: "Inquery/Question/Request",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Hasil Kunjungan",
                  labelText: "Hasil Kunjungan",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Container(
                width: 300.00,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  elevation: 0.0,
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerRight,
                        colors: [Colors.redAccent, Colors.pinkAccent],
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Simpan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
