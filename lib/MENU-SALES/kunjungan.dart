import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:PortalSales/MENU-SALES/AddEditPage.dart';

void main() {
  runApp(KunjunganPortal());
}

class KunjunganPortal extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future getData() async {
    var url = 'http://192.168.1.7/apiServer/getdata.php';
    var response = await http.get(url);
    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Php Mysql Crud'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddEditPage(),
            ),
          );
          setState(() {
            getData();
          });
        },
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    List list = snapshot.data;
                    return ListTile(
                      leading: GestureDetector(
                        child: Icon(Icons.edit),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddEditPage(
                                list: list,
                                index: index,
                              ),
                            ),
                          );
                          debugPrint('Edit Clicked');
                        },
                      ),
                      title: Text(list[index]['nama_kunjungan']),
                      subtitle: Text(list[index]['jabatan_kunjungan']),
                      trailing: GestureDetector(
                        child: Icon(Icons.delete),
                        onTap: () {
                          setState(() {
                            var url =
                                'http://192.168.1.7/apiServer/deleteData.php';
                            http.post(url, body: {
                              'nama_kunjungan': list[index]['nama_kunjungan'],
                              'hp_kunjungan': list[index]['hp_kunjungan'],
                              'email_kunjungan': list[index]['email_kunjungan'],
                              'jabatan_kunjungan': list[index]
                                  ['jabatan_kunjungan'],
                              'req_kunjungan': list[index]['req_kunjungan'],
                              'hasil_kunjungan': list[index]['hasil_kunjungan'],
                            });
                          });
                        },
                      ),
                    );
                  })
              : CircularProgressIndicator();
        },
      ),
    );
  }
}
