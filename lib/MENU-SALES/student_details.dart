import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StudentDetails extends StatelessWidget {
  final String patientid, mrn, name, sex, birthdate, xraytypecode;

  StudentDetails(
      {this.patientid,
      this.mrn,
      this.name,
      this.sex,
      this.birthdate,
      this.xraytypecode});
  //setting constructor for this class so that we can pass
  // data from another class.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.cyan[900],
          title: Text("Worklist Dokter")), //app bar

      body: SingleChildScrollView(
        child: Card(
          child: Container(
            width: double.infinity, //making width 100%;
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("patientid: " + patientid),
                Text("mrn: " + mrn),
                Text("name: " + name),
                Text("sex: " + sex),
                Text("birthdate: " + birthdate),
                Text("xray type: " + xraytypecode),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
