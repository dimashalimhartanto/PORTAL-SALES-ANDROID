import 'package:PortalSales/REPORT_INTIWID/HomeWorklist.dart';
import 'package:PortalSales/main_html.dart';
import 'package:PortalSales/model/models.dart';
import 'package:PortalSales/tab_home/Radiographer.dart';
import 'package:PortalSales/tab_home/Template.dart';
import 'package:PortalSales/tab_home/intiwid_icon_menu.dart';
import 'package:PortalSales/constants/style_constant.dart';
import 'package:PortalSales/shared/shared.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:PortalSales/customlib/scroll_snap_list_custom.dart';
import 'dart:ui';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1581595219618-375a1a48d324?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
  'https://images.unsplash.com/photo-1551076805-e1869033e561?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1588776814546-1ffcf47267a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
];

// ignore: must_be_immutable
class HalamanUtamaIntiwid extends StatelessWidget {
  AnimationController colorAnimationController;
  Animation appBarColorTween, iconColorTween, fieldColorTween;

  Brightness brightnessCutom = Brightness.dark;
  ScrollController scrollControllerSingle;
  int touchedIndex;

  GlobalKey key = GlobalKey();
  int minutCountdown = 300;
  int secondCountdown = 59;
  int current = 0;
  int minuteShow = 4;
  bool secondAppBar = false;
  int selectedKategori = 0;
  double containerHeight = 80;

  final ScrollController controller;

  HalamanUtamaIntiwid({this.controller});

  GlobalKey<ScrollSnapListState> sslKey = GlobalKey();
  ScrollController gopayScrollCtrl;

  final itemListIndex = new ValueNotifier(1);

  get widthSize => null;

  BuildContext get context => null;

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    List<Produk> produks = dummyProduk.sublist(0, 4);

    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    gopayScrollCtrl = ScrollController();
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 20,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 25,
              height: 3,
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            controller: controller,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[fotointiwid(), profileButton(), rispacs()],
                ),
              ),
              topPicks(),
              content(context),
              SizedBox(
                height: 900,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget content(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 24,
          ),

          // PENJELASAN
          Padding(
            padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
            child: Text(
              'MENU DOKTER',
              style: mTitleStyle,
            ),
          ),
          SizedBox(
            height: 19,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeWorklist()),
                        );
                      },
                      child: IntiwidIconMenu(
                        image: "assets/images/homeris.png",
                        title: "Home",
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReportWorklist()),
                          );
                        },
                        child: IntiwidIconMenu(
                          image: "assets/images/reportris.png",
                          title: "Report",
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => RegistrasiDokter()),
                        // );
                      },
                      child: IntiwidIconMenu(
                        image: "assets/images/regis.png",
                        title: "Registration",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => PenawaranSales()),
                        // );
                      },
                      child: IntiwidIconMenu(
                        image: "assets/images/order.png",
                        title: "Order",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => HalamanBeranda()),
                        // );
                      },
                      child: IntiwidIconMenu(
                        image: "assets/images/exam-room.png",
                        title: "Exam\nRoom",
                      ),
                    ),
                    InkWell(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WorklistDokter()),
                          );
                        },
                        child: IntiwidIconMenu(
                          image: "assets/images/workloadris.png",
                          title: "Worklist",
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TemplateDokter()),
                        );
                      },
                      child: IntiwidIconMenu(
                        image: "assets/images/templateris.png",
                        title: "Template",
                      ),
                    ),
                    InkWell(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => TemplateDokter()),
                      //   );
                      // },
                      child: IntiwidIconMenu(
                        image: "assets/images/chartris.png",
                        title: "Charts",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: <Widget>[
                //     InkWell(
                //       onTap: () {
                //         // Navigator.push(
                //         //   context,
                //         //   MaterialPageRoute(
                //         //       builder: (context) => HalamanBeranda()),
                //         // );
                //       },
                //       child: IntiwidIconMenu(
                //         image: "assets/images/excel.png",
                //         title: "Excel",
                //       ),
                //     ),
                //     InkWell(
                //       child: InkWell(
                //         onTap: () {},
                //         child: IntiwidIconMenu(
                //           image: "assets/images/aboutris.png",
                //           title: "About",
                //         ),
                //       ),
                //     ),
                //     InkWell(
                //       onTap: () {
                //         // Navigator.push(
                //         //   context,
                //         //   MaterialPageRoute(
                //         //       builder: (context) => Notifdokterris()),
                //         // );
                //       },
                //       child: IntiwidIconMenu(
                //         image: "assets/images/settings.png",
                //         title: "settings",
                //       ),
                //     ),
                //     InkWell(
                //       child: InkWell(
                //         onTap: () {},
                //         child: IntiwidIconMenu(
                //           image: "assets/images/userris.png",
                //           title: "radiographer,",
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 19,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/intimedika.png',
                  width: 190,
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // INTIMEDIKA IMAGES
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: mainColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    height: 250,
                    enlargeCenterPage: false,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        var current = index;
                      });
                    },
                  ),
                  items: imgList
                      .map(
                        (item) => Container(
                          width: double.infinity,
                          height: 250,
                          child: Container(
                            width: double.infinity,
                            child: Image.network(
                              item,
                              fit: BoxFit.fill,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            height: 40,
            width: widthSize,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: imgList.map((e) {
                      int index = imgList.indexOf(e);
                      return Container(
                        height: 8,
                        width: 8,
                        margin: EdgeInsets.only(left: index == 0 ? 4 : 8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: current == index ? mainColor : accentColor3,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 19,
          ),
          // NOTE : KEJAR DISKON, LIHAT SEMUA
          Container(
            height: 50,
            width: widthSize,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TRAINING DOKTER",
                      style: blackTextFont.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 8,
            color: Colors.transparent,
          ),
          SizedBox(
            height: 19,
          ),
          // FOTO 2
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/kunjungan1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "",
                      style: blackTextFont.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Pemasangan PACS Intiwid di RS Pelita Insani - Banjarmasin, Kalimantan Selatan",
                        style: blackTextFont.copyWith(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/kunjungan2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '',
                      style: blackTextFont.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Training PACS untuk Dokter RS Pelita Insani Banjarmasin Kalimantan Selatan - Indonesia.',
                        style: blackTextFont.copyWith(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/kunjungan3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '',
                      style: blackTextFont.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Training PACS untuk Radiologi RS Pelita Insani Banjarmasin Kalimantan Selatan - Indonesia.',
                        style: blackTextFont.copyWith(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/kunjungan4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '',
                      style: blackTextFont.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Training PACS untuk Radiologi RS Pelita Insani Banjarmasin Kalimantan Selatan - Indonesia.',
                        style: blackTextFont.copyWith(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            options: CarouselOptions(
              autoPlay: false,
              enableInfiniteScroll: true,
              height: 250,
              enlargeCenterPage: false,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  var current = index;
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget topPicks() {
    var selectedIndex = new ValueNotifier(1);

    List<String> category = [];

    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Radiology Information System',
              style: blackTextFont.copyWith(
                  fontSize: 22, fontWeight: FontWeight.w900),
            ),
          ),
          AnimatedBuilder(
            animation: selectedIndex,
            builder: (context, child) => Container(
              height: 30,
              margin: EdgeInsets.only(top: 16),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: category.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () => selectedIndex.value = index,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin:
                          EdgeInsets.only(left: index == 0 ? 20 : 4, right: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: index == selectedIndex.value
                                  ? Colors.green[700]
                                  : Colors.grey[400],
                              width: 1),
                          borderRadius: BorderRadius.circular(15),
                          color: index == selectedIndex.value
                              ? Colors.green[700]
                              : Colors.white),
                      child: Center(
                        child: Text(
                          category[index],
                          style: blackTextFont.copyWith(
                              color: index == selectedIndex.value
                                  ? Colors.white
                                  : Colors.grey[800],
                              fontSize: 14),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget profileButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.transparent),
        // child: Align(
        //   child: Image.asset(),
        // ),
      ),
    );
  }

  Widget fotointiwid() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 120,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.transparent),
        child: Align(
          child: Image.asset(
            "assets/images/intiwid2.png",
          ),
        ),
      ),
    );
  }

  Widget rispacs() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90), color: Colors.transparent),
        child: Align(
          child: Image.asset(
            "assets/images/logo3.png",
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
