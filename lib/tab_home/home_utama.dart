import 'package:PortalSales/MENU-SALES/RESOURCE_SALES.dart';
import 'package:PortalSales/MENU-SALES/constant.dart';
import 'package:PortalSales/MENU-SALES/LAPORAN-KUNJUNGAN.dart';
import 'package:PortalSales/MENU-SALES/more_sales.dart';
import 'package:PortalSales/colors.dart';
import 'package:PortalSales/constants/color_constant.dart';
import 'package:PortalSales/constants/style_constant.dart';
import 'package:PortalSales/models/carousel_model.dart';
import 'package:PortalSales/models/category.dart';
import 'package:PortalSales/models/models.dart';
import 'package:PortalSales/models/popular_destination_model.dart';
import 'package:PortalSales/models/travlog_model.dart';
import 'package:PortalSales/shared/shared.dart';
import 'package:PortalSales/tab_home/PRODUK/HomePage-Agfa.dart';
import 'package:PortalSales/tab_home/PRODUK/RECOMEND-PRODUK/recommend_card_Agfa.dart';
import 'package:PortalSales/tab_home/destination_model.dart';
import 'package:PortalSales/tab_home/destination_screen,.dart';
import 'package:PortalSales/tab_home/menu-option.dart';
import 'package:PortalSales/tab_home/pages/home_page.dart';
import 'package:PortalSales/tab_home/pages/pages.dart';
import 'package:PortalSales/views/newspage.dart';
import 'package:PortalSales/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:PortalSales/customlib/scroll_snap_list_custom.dart';
import 'package:PortalSales/tab_home/gopay_scroll_content.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:math';
import 'dart:ui';

class HomeContent extends StatelessWidget {
  final ScrollController controller;

  HomeContent({this.controller});

  GlobalKey<ScrollSnapListState> sslKey = GlobalKey();
  ScrollController gopayScrollCtrl;

  final itemListIndex = new ValueNotifier(1);

  get widthSize => null;

  BuildContext get context => null;

  @override
  Widget build(BuildContext context) {
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
                  children: <Widget>[search(), profileButton()],
                ),
              ),
              gopay(context),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Product',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 4,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/agfa.png',
                  width: 70,
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: InkWell(
              onTap: () {},
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProdukIntiwid()),
                      );
                    },
                    child: RecommendCard(
                      imageUrl: 'assets/images/agfa-1.png',
                      title: "DT2 B",
                      offerEnds: "Modality & FIlm",
                      startPrices:
                          r"The Agfa-Gavaret Group develops, produces and distributes an extensive range of analog and digital imaging system and IT solution",
                    ),
                  ),
                  RecommendCard(
                    imageUrl: 'assets/images/agfa-2.png',
                    title: "CR 30- Xm",
                    offerEnds: "Modality & FIlm",
                    startPrices:
                        r"The Agfa-Gavaret Group develops, produces and distributes an extensive range of analog and digital imaging system and IT solution",
                  ),
                  RecommendCard(
                    imageUrl: 'assets/images/agfa-3.png',
                    title: "DRYSTAR 5302",
                    offerEnds: "Modality & Film",
                    startPrices:
                        r"The Agfa-Gravaret Group develops, produces and distributes an extensive range of analog and digital imaging system and IT solution",
                  ),
                  RecommendCard(
                    imageUrl: 'assets/images/agfa-4.png',
                    title: "DRYSTAR 5503",
                    offerEnds: "Modality & Film",
                    startPrices:
                        r"The Agfa-Gravaret Group develops, produces and distributes an extensive range of analog and digital imaging system and IT solution",
                  ),
                  RecommendCard(
                    imageUrl: 'assets/images/agfa-5.png',
                    title: "DRYSTAR AXYS",
                    offerEnds: "Modality & Film",
                    startPrices:
                        r"The Agfa-Gravet Group develops, produces and distributes an extensive range of analog and digital imaging system and IT solution",
                  ),
                  RecommendCard(
                    imageUrl: 'assets/images/agfa-6.png',
                    title: "CR 15-X",
                    offerEnds: "Modality & Film",
                    startPrices:
                        r"The Agfa-Gravet Group develops, produces and distributes an extensive range of analog and digital imaging system and IT solution",
                  ),
                  RecommendCard(
                    imageUrl: 'assets/images/agfa-7.png',
                    title: "CR 12-X",
                    offerEnds: "Modality & Film",
                    startPrices:
                        r"The Agfa-Gravet Group develops, produces and distributes an extensive range of analog and digital imaging system and IT solution",
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/bayer.png',
                  width: 70,
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          Container(
            height: 160,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RecommendCard(
                  imageUrl: 'assets/images/bayer-2.png',
                  title: "Disposable Syringe",
                  offerEnds: "Modality & BHP",
                  startPrices:
                      r"Bayer is a life Science company with a more than 150-year history and care competencies in the areas of healt care and agriculture.",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/bayer-2.png',
                  title: "Disposable Syringe",
                  offerEnds: "Modality & BHP",
                  startPrices:
                      r"Bayer is a life Science company with a more than 150-year history and care competencies in the areas of healt care and agriculture.",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/bayer-3.png',
                  title: "Imaxeon Salient Brochure DUAL",
                  offerEnds: "Modality & BHP",
                  startPrices:
                      r"Bayer is a life Science company with a more than 150-year history and care competencies in the areas of healt care and agriculture",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/bayer-4.png',
                  title: "Imaxeon Salientbrochure SINGLE",
                  offerEnds: "Modality & BHP",
                  startPrices:
                      r"Bayer is life Science company with a more than 150-year history and care competencies in the areas of healt care and agriculture",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/bayer-5.png',
                  title: "MEDRAD STELLANT D",
                  offerEnds: "Modality & BHP",
                  startPrices:
                      r"Bayer is life Science company with a more than 150-year history and care competencies in the areas of healt care and agriculture.",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/bayer-6.png',
                  title: "Medrad Mark 7 Arterion Brochure",
                  offerEnds: "Modality & BHP",
                  startPrices:
                      r"Bayer is life Science company with a more than 150-year history and care competencies in the areas of healt care and agriculture",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/bayer-7.png',
                  title: "Medrad Spectics Solaris EP",
                  offerEnds: "Modality & BHP",
                  startPrices:
                      r"Bayer is lofe Science company with a more than 150-year history and care competencies in the areas if healt care and agriculture.",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/careray.png',
                  width: 70,
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          Container(
            height: 130,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RecommendCard(
                  imageUrl: 'assets/images/careray-1.png',
                  title: "CareView 750C",
                  offerEnds: "DR",
                  startPrices:
                      r"CareRay is a global company dedicated to the innovative development of digital X-ray flat panel detectors. ",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/careray-2.png',
                  title: "CareView 1500Cw",
                  offerEnds: "DR",
                  startPrices:
                      r"CareRay is a global company dedicated to the innovative development of digital X-ray flat panel detectors.",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/careray-3.png',
                  title: "CareView 1500L",
                  offerEnds: "DR",
                  startPrices:
                      r"Careray is a global company dedicated to the innovative development of digital X-ray flat panel detectors.",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 33,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/clear.png',
                  width: 70,
                ),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
          Container(
            height: 160,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RecommendCard(
                  imageUrl: 'assets/images/clear-1.png',
                  title: "Medical Dry Film(Inkjet)",
                  offerEnds: "Printer and Dry Film",
                  startPrices:
                      r"Clear was founded in 2008. It is the facilitator of the leading medical self-service system and intelligent medical health solutions.",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/clear-2.png',
                  title: "Clear Specified INK",
                  offerEnds: "Printer and Dry Film",
                  startPrices:
                      r"Clear was founded in 2008. It is the facilitator of the leading medical selft-services system and intelligent medical healt solutions.",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/clear-3.png',
                  title: "Medical Film Printer Epson L1300",
                  offerEnds: "Printer and Dry Film",
                  startPrices:
                      r"Clear was founded in 2008. It is the facilitator of the leading medical selft-services system and intelligent medical healt solutions.",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/intiwid.png',
                  width: 70,
                ),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
          Container(
            height: 180,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RecommendCard(
                  imageUrl: 'assets/images/intiwid-1.png',
                  title: "PACS",
                  offerEnds: "RIS & PACS",
                  startPrices:
                      r"PACS is a system created and developed by PT. INTIMEDIKA PUSPA INDAH, Domestic products, which include RIS Features with Unlimited User License, Unlimited modality connectivity, Unlimited procedures per Annum that can be run on a Multi Operating System (OS).",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/intiwid-2.png',
                  title: "RIS",
                  offerEnds: "RIS & PACS",
                  startPrices:
                      r"PACS is a system created and developed by PT. INTIMEDIKA PUSPA INDAH, Domestic products, which include RIS Features with Unlimited User License, Unlimited modality connectivity, Unlimited procedures per Annum that can be run on a Multi Operating System (OS).",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/intiwid-3.png',
                  title: "RISPACS",
                  offerEnds: "RIS & PACS",
                  startPrices:
                      r"PACS is a system created and developed by PT. INTIMEDIKA PUSPA INDAH, Domestic products, which include RIS Features with Unlimited User License, Unlimited modality connectivity, Unlimited procedures per Annum that can be run on a Multi Operating System (OS).",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/iradimed.png',
                  width: 70,
                ),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 160,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RecommendCard(
                  imageUrl: 'assets/images/iradimed-1.png',
                  title: "MRidium 3860",
                  offerEnds: "Modality",
                  startPrices:
                      r"At IRadimed, we work hard every day to provide you with the best possible products and services while pushing the boundaries of technical innovation. ",
                ),
                RecommendCard(
                  imageUrl: 'assets/images/iradimed-2.png',
                  title: r"Portable MRI Monitoring System 3880",
                  offerEnds: "Modality",
                  startPrices:
                      r"At IRadimed, we work hard every day to provide you with the best possible products and services while pushing the boundaries of technical innovation.",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 8,
                ),
                Text(
                  'intimedika News',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 4,
                ),
              ],
            ),
          ),
          Container(
            height: 230,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 225,
                    width: MediaQuery.of(context).size.width - 10,
                    child: Align(
                      child: Card(
                        margin: EdgeInsets.only(
                            left: index == 0 ? 10 : 20, right: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BeritaSekarang()),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          "assets/gif/banner.gif"),
                                    ),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8))),
                                height: 120,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Update Berita Terkini',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                      "anda dapat melihat beberapa berita terkini yang ada di indonesia.")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
            child: Text(
              'INTIMEDIKA SALES',
              style: mTitleStyle,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 195,
                  child: Swiper(
                    onIndexChanged: (index) {
                      setState(() {
                        var _current = index;
                      });
                    },
                    autoplay: true,
                    duration: 4000,
                    layout: SwiperLayout.DEFAULT,
                    itemCount: carousels.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage(
                                carousels[index].image,
                              ),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),

          // PENJELASAN INTIMEDIKA
          Padding(
            padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
            child: Text(
              'MENU SALES',
              style: mTitleStyle,
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.assignment_ind,
                          color: Colors.white,
                          size: 20,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'Input\nKunjungan',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LaporanKunjunganHarian()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.date_range,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        "Laporan\nKunjungan",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Resource()),
                        );
                      },
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.orange[900]),
                          child: Icon(
                            Icons.call_split,
                            color: Colors.white,
                            size: 20,
                          )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        "Resource",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.arrow_upward,
                          color: Colors.white,
                          size: 20,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Funnel',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.assignment_ind,
                          color: Colors.white,
                          size: 20,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        "View\nFunnel",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.date_range,
                          color: Colors.white,
                          size: 24,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        "Sales\nActivity",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.description,
                          color: Colors.white,
                          size: 20,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Direct\nOrder',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.arrow_upward,
                          color: Colors.white,
                          size: 20,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Reject',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.assignment_ind,
                          color: Colors.white,
                          size: 20,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        "Input\nFunnel",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.date_range,
                          color: Colors.white,
                          size: 24,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        "Direct\nOrder",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.call_split,
                          color: Colors.white,
                          size: 20,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Targeting',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MenuMacamSales()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'More',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.assignment_ind,
                          color: Colors.white,
                          size: 20,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        "Input\nFunnel",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.date_range,
                          color: Colors.white,
                          size: 24,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        "Direct\nOrder",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.call_split,
                          color: Colors.white,
                          size: 20,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Targeting',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MenuMacamSales()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange[900]),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'More',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget topPicks() {
    var selectedIndex = new ValueNotifier(0);

    List<String> category = [
      'Kunjungan',
      'Rersource',
      'Penawaran',
      'Sales Activity',
      'Target/Reject',
      'Funnel',
      'Product',
      'Syringe',
      'News',
    ];

    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Konten buat kamu',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
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
                          style: TextStyle(
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

  Widget gopay(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.cyan[900], borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 4,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: 100,
            child: ScrollSnapList(
              onItemFocus: (index) {
                itemListIndex.value = index;
              },
              itemSize: 75,
              itemBuilder: (ctx, index) {
                return Container(
                  child: gopayScrollContent(
                      index: index, scrollController: gopayScrollCtrl),
                );
              },
              itemCount: 2,
              duration: 100,
              initialIndex: 1,
              key: sslKey,
              listController: gopayScrollCtrl,
              dynamicItemSize: true,
              scrollDirection: Axis.vertical,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.arrow_upward,
                    size: 16,
                    color: Color(0xff02ACD3),
                  )),
              SizedBox(
                height: 6,
              ),
              Text(
                'Pay',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              )
            ],
          )),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.add,
                      size: 16,
                      color: Color(0xff02ACD3),
                    )),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Top Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.mail_outline_sharp,
                        size: 16,
                        color: Color(0xff02ACD3),
                      )),
                ),
                SizedBox(
                  height: 6,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'More',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }

  Widget profileButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.cyan[900]),
        child: Align(
          child: SvgPicture.asset(
            'assets/icons/icon_profile.svg',
          ),
        ),
      ),
    );
  }

  Widget search() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey.withOpacity(.05),
            border: Border.all(color: Colors.grey.withOpacity(.5), width: .5)),
        child: Row(
          children: <Widget>[
            Center(child: Icon(Icons.search)),
            SizedBox(
              width: 8,
            ),
            Text(
              'Agfa DRYSTAR 5302...',
              style: TextStyle(color: Colors.grey[700], fontSize: 15),
            )
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
