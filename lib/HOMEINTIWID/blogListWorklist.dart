import 'dart:convert';
import 'package:PortalSales/HOMEINTIWID/BlogContentWorklist.dart';
import 'package:flutter/material.dart';

class JsonDataType {
  final String modality;
  final String bodypart;
  final String seriesdesc;
  final String numinstances;
  final String createdtime;
  final String seriesiuid;

  JsonDataType({
    this.modality,
    this.bodypart,
    this.seriesdesc,
    this.numinstances,
    this.createdtime,
    this.seriesiuid,
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
        .loadString("assets/json/xrayseries.json");
    final jsonResult = json.decode(data);
    for (Map<String, dynamic> celpipData in jsonResult) {
      JsonDataType data = JsonDataType(
        modality: celpipData['modality'],
        bodypart: celpipData['body_part'],
        seriesdesc: celpipData['series_desc'],
        numinstances: celpipData['num_instance'],
        createdtime: celpipData['created_time'],
        seriesiuid: celpipData['series_iuid'],
      );
      setState(() => jsonDataList.add(data));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WORKLOAD DOKTER'),
        backgroundColor: Color(0xFF44B0BB),
        centerTitle: true,
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
            builder: (context) => BlogContentWorklist(webHTML: data.modality),
          ),
        ),
        title: Text(
          data.bodypart,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Container(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(data.createdtime),
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
