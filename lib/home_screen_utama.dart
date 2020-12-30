import 'dart:async';
import 'dart:ui';
import 'package:PortalSales/tab_chat/tab_chat.dart';
import 'package:PortalSales/tab_home/tab_home.dart';
import 'package:PortalSales/tab_promos/tab_promos.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:PortalSales/customlib/bubble_tab_indicator_custom.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Size get size => MediaQuery.of(context).size;
  double get rubberSheetHeight => size.height - 70;
  double get sheetPercentage => rubberSheetHeight / size.height;

  double maxScreenHeight;

  TabController tabController;
  double get pageWidth => size.width;
  double get pageViewWidth => pageWidth * 1.02;
  double get widthFactor => 1.02;
  double get tabPaddingHorizontal =>
      ((widthFactor * pageWidth) - pageWidth) / 2;

  final bubleTabIndicator = BubbleTabIndicator(
    indicatorHeight: 34.0,
    indicatorColor: Color(0xff017893),
  );

  int activeTab = 1;

  PanelController panelController = PanelController();
  ScrollController sliderSheetScrollCtrl = ScrollController();

  final sliderPosition = new ValueNotifier(0.0);

  AnimationController sliderTransformController;
  Animation<double> sliderTransformAnimation;

  bool sliderShow = false;
  bool buttonShow = false;

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: activeTab,
    );

    sliderTransformController =
        AnimationController(duration: Duration(milliseconds: 150), vsync: this);
    sliderTransformAnimation =
        Tween(begin: 0.0, end: 130.0).animate(sliderTransformController);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrait) {
      maxScreenHeight = constrait.maxHeight;
      return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowGlow();
            return true;
          },
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Stack(
                children: <Widget>[
                  Center(
                    child: new Image.asset(
                      'assets/images/portalsales.jpg',
                      width: size.width,
                      height: size.height,
                      fit: BoxFit.cover,
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: widthFactor,
                    heightFactor: 1.0,
                    child: TabBarView(
                      controller: tabController,
                      children: <Widget>[
                        TabPromos(
                          rubberSheetPercentage: sheetPercentage,
                        ),
                        TabHome(
                          rubberSheetPercentage: sheetPercentage,
                          sliderShow: (show) {
                            if (show != sliderShow && show != null) {
                              sliderShow = show;
                              sliderShow
                                  ? sliderTransformController.reverse()
                                  : sliderTransformController.forward();
                            }
                          },
                        ),
                        TabChat(sheetPercentage),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 22),
                    child: TabBar(
                      controller: tabController,
                      indicator: bubleTabIndicator,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/icons/icon_promos.svg',
                                width: 22,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Promos',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/icons/icon_home.svg',
                                width: 22,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/icons/icon_chat.svg',
                                width: 22,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Chat',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
