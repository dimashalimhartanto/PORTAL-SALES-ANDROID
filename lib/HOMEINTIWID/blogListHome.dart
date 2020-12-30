import 'dart:convert';
import 'package:PortalSales/HOMEINTIWID/blogcontentHome.dart';
import 'package:PortalSales/home_screen_utama.dart';
import 'package:flutter/material.dart';

class JsonDataType {
  final String patientid;
  final String mrn;
  final String name;
  final String sex;
  final String birthdate;
  final String xraytypecode;

  JsonDataType({
    this.patientid,
    this.mrn,
    this.name,
    this.sex,
    this.birthdate,
    this.xraytypecode,
  });
}

class BlogListPasien extends StatefulWidget {
  @override
  _BlogListPasien createState() => _BlogListPasien();
}

class _BlogListPasien extends State<BlogListPasien> {
  List<JsonDataType> jsonDataList = List<JsonDataType>();

  @override
  void initState() {
    _takeJsonData();
    super.initState();
  }

  void _takeJsonData() async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/json/listpasient.json");
    final jsonResult = json.decode(data);
    for (Map<String, dynamic> celpipData in jsonResult) {
      JsonDataType data = JsonDataType(
        patientid: celpipData['patientid'],
        mrn: celpipData['mrn'],
        name: celpipData['name'],
        sex: celpipData['sex'],
        birthdate: celpipData['birth_date'],
        xraytypecode: celpipData['xray_type_code'],
      );
      setState(() => jsonDataList.add(data));
    }
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
      body: ListView(
        children: jsonDataList.map(_listTile).toList(),
      ),
    );
  }

  Widget _listTile(JsonDataType data) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ListTile(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlogContent(webHTML: data.name),
          ),
        ),
        title: Text(
          data.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Container(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(data.xraytypecode),
          ),
        ),
        // leading: ClipRRect(
        //   borderRadius: BorderRadius.circular(6.0),
        //   child: CachedNetworkImage(
        //     imageUrl: data.,
        //     placeholder: (context, url) => Container(
        //       transform: Matrix4.translationValues(0.0, 0.0, 0.0),
        //       child: Container(
        //         width: 70,
        //         height: 70,
        //         child: Center(
        //           child: Icon(
        //             Icons.book,
        //             size: 26,
        //           ),
        //         ),
        //       ),
        //     ),
        //     errorWidget: (context, url, book) => new Icon(Icons.book),
        //     width: 70,
        //     height: 70,
        //     fit: BoxFit.cover,
        //   ),
        // ),
      ),
    );
  }
}
