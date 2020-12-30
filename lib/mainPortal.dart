// import 'dart:convert';

// import 'package:PortalSales/KUNJUNGAN/detail_kunjungan.dart';
// import 'package:PortalSales/KUNJUNGAN/add_data_kunjungan.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(new MaterialApp(
//     title: "Kunjungan Rumah Sakit",
//     home: new RumahSakit(),
//   ));
// }

// class RumahSakit extends StatefulWidget {
//   @override
//   _RumahSakitState createState() => new _RumahSakitState();
// }

// class _RumahSakitState extends State<RumahSakit> {
//   Future<List> getData() async {
//     final response =
//         await http.get("http://localhost:8089/apiServer/getrs.php");
//     return json.decode(response.body);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Kunjungan Rumah Sakit"),
//       ),
//       floatingActionButton: new FloatingActionButton(
//         child: new Icon(Icons.add),
//         onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
//           builder: (BuildContext context) => new TambahDatakunjungan(),
//         )),
//       ),
//       body: new FutureBuilder<List>(
//         future: getData(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) print(snapshot.error);
//           return snapshot.hasData
//               ? new ItemList(
//                   list: snapshot.data,
//                 )
//               : new Center(
//                   child: new CircularProgressIndicator(),
//                 );
//         },
//       ),
//     );
//   }
// }

// class ItemList extends StatelessWidget {
//   final List list;
//   ItemList({this.list});

//   @override
//   Widget build(BuildContext context) {
//     return new ListView.builder(
//       itemCount: list == null ? 0 : list.length,
//       itemBuilder: (context, i) {
//         return new Container(
//             padding: const EdgeInsets.all(10.0),
//             child: new GestureDetector(
//               onTap: () => Navigator.of(context).push(new MaterialPageRoute(
//                   builder: (BuildContext context) => new DetailKunjungan(
//                         list: list,
//                         index: i,
//                       ))),
//               child: new Card(
//                 child: new ListTile(
//                   title: new Text(list[i]['inti_rs']),
//                   leading: new Icon(Icons.widgets),
//                   subtitle: new Text("Kunjungan : ${list[i]['pk_rs']}"),
//                 ),
//               ),
//             ));
//       },
//     );
//   }
// }
