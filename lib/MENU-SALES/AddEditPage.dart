import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:PortalSales/MENU-SALES/kunjungan.dart';

class AddEditPage extends StatefulWidget {
  final List list;
  final int index;
  AddEditPage({this.list, this.index});
  @override
  _AddEditPageState createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {
  TextEditingController namakunjungan = TextEditingController();
  TextEditingController hpkunjungan = TextEditingController();
  TextEditingController emailkunjungan = TextEditingController();
  TextEditingController jabatankunjungan = TextEditingController();
  TextEditingController reqkunjungan = TextEditingController();
  TextEditingController hasilkunjungan = TextEditingController();

  bool editMode = false;

  addUpdateData() {
    if (editMode) {
      var url = 'http://192.168.1.7/apiServer/editdata.php';
      http.post(url, body: {
        'pk_kunjungan': widget.list[widget.index]['pk_kunjungan'],
        'nama_kunjungan': namakunjungan.text,
        'hp_kunjungan': hpkunjungan.text,
        'email_kunjungan': emailkunjungan.text,
        'jabatan_kunjungan': jabatankunjungan.text,
        'req_kunjungan': reqkunjungan.text,
        'hasil_kunjungan': hasilkunjungan.text,
      });
    } else {
      var url = 'http://192.168.1.7/apiServer/add_input_kunjungan.php';
      http.post(url, body: {
        'nama_kunjungan': namakunjungan.text,
        'hp_kunjungan': hpkunjungan.text,
        'email_kunjungan': emailkunjungan.text,
        'jabatan_kunjungan': jabatankunjungan.text,
        'req_kunjungan': reqkunjungan.text,
        'hasil_kunjungan': hasilkunjungan.text,
      });
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.index != null) {
      editMode = true;
      namakunjungan.text = widget.list[widget.index]['nama_kunjungan'];
      hpkunjungan.text = widget.list[widget.index]['hp_kunjungan'];
      emailkunjungan.text = widget.list[widget.index]['email_kunjungan'];
      jabatankunjungan.text = widget.list[widget.index]['jabatan_kunjungan'];
      reqkunjungan.text = widget.list[widget.index]['req_kunjungan'];
      hasilkunjungan.text = widget.list[widget.index]['hasil_kunjungan'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(editMode ? 'Update' : 'Add Data'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: namakunjungan,
              decoration: InputDecoration(
                labelText: 'Nama Kunjungan',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailkunjungan,
              decoration: InputDecoration(
                labelText: 'Email Kunjungan',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: jabatankunjungan,
              decoration: InputDecoration(
                labelText: 'Jabatan / Divisi',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: reqkunjungan,
              decoration: InputDecoration(
                labelText: 'Req/Inquery',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: hasilkunjungan,
              decoration: InputDecoration(
                labelText: 'Hasil Kunjungan',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  addUpdateData();
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
              color: Colors.blue,
              child: Text(
                editMode ? 'Update' : 'Save',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
