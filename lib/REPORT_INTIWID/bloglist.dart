import 'dart:convert';
import 'package:PortalSales/tab_home/Radiographer.dart';
import 'package:flutter/material.dart';
import 'blogContent.dart';

class JsonDataType {
  final String templateid;
  final String title;
  final String fill;
  final String username;

  JsonDataType({this.templateid, this.title, this.fill, this.username});
}

class BlogList extends StatefulWidget {
  @override
  _BlogList createState() => _BlogList();
}

class _BlogList extends State<BlogList> {
  List<JsonDataType> jsonDataList = List<JsonDataType>();

  @override
  void initState() {
    _takeJsonData();
    super.initState();
  }

  void _takeJsonData() async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/json/template.json");
    final jsonResult = json.decode(data);
    for (Map<String, dynamic> celpipData in jsonResult) {
      JsonDataType data = JsonDataType(
        templateid: celpipData['template_id'],
        title: celpipData['title'],
        fill: celpipData['fill'],
        username: celpipData['username'],
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
                      MaterialPageRoute(builder: (context) => ReportWorklist()),
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
                Stack(
                  children: <Widget>[
                    Icon(
                      Icons.notifications_none,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
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
            builder: (context) => BlogContent(webHTML: data.fill),
          ),
        ),
        title: Text(
          data.title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Container(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(data.username),
            )),
        // leading: ClipRRect(
        //   borderRadius: BorderRadius.circular(6.0),
        //   child: CachedNetworkImage(
        //     imageUrl: data.username,
        //     placeholder: (context, url) => Container(
        //       transform: Matrix4.translationValues(0.0, 0.0, 0.0),
        //       child: Container(
        //           width: 70,
        //           height: 70,
        //           child: Center(
        //               child: Icon(
        //             Icons.image,
        //             size: 26,
        //           ))),
        //     ),
        //     errorWidget: (context, url, error) => new Icon(Icons.book),
        //     width: 70,
        //     height: 70,
        //     fit: BoxFit.cover,
        //   ),
        // ),
      ),
    );
  }
}
