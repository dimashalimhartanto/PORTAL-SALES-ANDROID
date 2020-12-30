import 'package:PortalSales/MOBILEVIEWER/webviewer.dart';
import 'package:PortalSales/MOBILEVIEWER/mainviewer.dart';
import 'package:PortalSales/shared/shared.dart';
import 'package:PortalSales/tab_home/intiwid_icon_menu.dart';
import 'package:flutter/material.dart';
import 'package:html_editor/html_editor.dart';
import 'package:PortalSales/home_screen_utama.dart';
/**
 * Created by riyadi rb on 2/5/2020.
 * link  : https://github.com/xrb21/flutter-html-editor
 */

void main() => runApp(WorklistDokter());

class WorklistDokter extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worklist Dokter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'Worklist Dokter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _keterangan = "";

  void _pilihketerangan(String value) {
    setState(() {
      _keterangan = value;
    });
  }

  Future onSelectNotification(String payload) {
    debugPrint("payload : $payload");
    showDialog(
      context: context,
      builder: (_) => new AlertDialog(
        title: new Text('Notification'),
        content: new Text('$payload'),
      ),
    );
  }

  GlobalKey<HtmlEditorState> keyEditor = GlobalKey();
  String result = "";

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
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: InkWell(
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              HtmlEditor(
                hint: "Your text here...",
                //value: "text content initial, if any",
                key: keyEditor,
                height: 400,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // FlatButton(
                    //   color: Color(0xFF44B0BB),
                    //   onPressed: () {
                    //     setState(() {
                    //       keyEditor.currentState.setEmpty();
                    //     });
                    //   },
                    //   child: Text(
                    //     "SAVE TEMPLATE",
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      width: 16,
                    ),
                    FlatButton(
                      color: Color(0xFF44B0BB),
                      onPressed: () async {
                        final txt = await keyEditor.currentState.getText();
                        setState(() {
                          result = txt;
                        });
                      },
                      child: Text(
                        "APPROVE",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    // ignore: missing_required_param
                    // FlatButton(
                    //   color: Color(0xFF44B0BB),
                    //   child: RaisedButton(
                    //     onPressed: showNotification,
                    //     child: new Text(
                    //       'SUBMIT',
                    //       style: TextStyle(color: Colors.white),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(result),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Intiwid Viewer",
                    style: blackTextFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 9,
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => DicomViewer()),
                            // );
                          },
                          child: IntiwidIconMenu(
                            title: "Dicom Viewer",
                            image: "assets/images/desktop1.png",
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ViewerDokter()),
                            );
                          },
                          child: IntiwidIconMenu(
                            title: "Web Viewer",
                            image: "assets/images/webviewer.png",
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MobileViewer()),
                            );
                          },
                          child: IntiwidIconMenu(
                            title: "Mobile Viewer",
                            image: "assets/images/mobileviewer.png",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Keterangan",
                    style: blackTextFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 10.0),
              ),
              new RadioListTile(
                value: "Normal",
                title: new Text("Normal"),
                groupValue: _keterangan,
                onChanged: (String value) {
                  _pilihketerangan(value);
                },
                activeColor: Color(0xFF24ADE3),
                subtitle: new Text("Pilih Kondisi Pasien"),
              ),
              new RadioListTile(
                value: "Kritis",
                title: new Text("Kritis"),
                groupValue: _keterangan,
                onChanged: (String value) {
                  _pilihketerangan(value);
                },
                activeColor: Color(0xFF24ADE3),
                subtitle: new Text("Pilih Kondisi Pasien"),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 10.0),
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => DicomViewer()),
                            // );
                          },
                          child: IntiwidIconMenu(
                            title: "SAVE DRAFT",
                            image: "assets/images/save.png",
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: IntiwidIconMenu(
                            title: "SAVE TEMPLATE",
                            image: "assets/images/save.png",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
