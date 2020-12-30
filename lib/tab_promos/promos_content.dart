import 'package:PortalSales/MENU-SALES/constant.dart';
import 'package:PortalSales/pages/countryPage.dart';
import 'package:PortalSales/tab_home/worldwidepanel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pie_chart/pie_chart.dart';

class HalamanDashboard extends StatefulWidget {
  @override
  _HalamanDashboard createState() => _HalamanDashboard();
}

class _HalamanDashboard extends State<HalamanDashboard> {
  Map worldData;
  fetchWorldWideData() async {
    http.Response response = await http.get('https://corona.lmao.ninja/v2/all');
    setState(() {
      worldData = json.decode(response.body);
    });
  }

  List countryData;
  fetchCountryData() async {
    http.Response response =
        await http.get('https://corona.lmao.ninja/v2/countries?sort=cases');
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  Future fetchData() async {
    fetchWorldWideData();
    fetchCountryData();
    print('fetchData called');
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: fetchData,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'DATA PATIENT',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CountryPage()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: primaryCyan,
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'INTIWID RISPACS',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              worldData == null
                  ? CircularProgressIndicator()
                  : WorldwidePanel(
                      worldData: worldData,
                    ),
              PieChart(
                dataMap: {
                  'Confirmed': worldData['cases'].toDouble(),
                  'Active': worldData['active'].toDouble(),
                  'Recovered': worldData['recovered'].toDouble(),
                  'Death': worldData['deaths'].toDouble(),
                },
                colorList: [
                  Colors.red,
                  Colors.blue,
                  Colors.green,
                  Colors.grey[900],
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
              //   child: Text(
              //     'Most affected Countries',
              //     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // countryData == null
              //     ? Container()
              //     : MostAffectedPanel(
              //         countryData: countryData,
              //       ),
              // InfoPanel(),
              // SizedBox(
              //   height: 28,
              // ),
              // Center(
              //     child: Text(
              //   'DASHBOARD LAPORAN PATIENT',
              // )),
              // SizedBox(
              //   height: 50,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
