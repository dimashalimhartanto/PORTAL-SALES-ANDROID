import 'package:PortalSales/PRODUK-SALES/horizontal_listview.dart';
import 'package:PortalSales/PRODUK-SALES/product_agfa.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProductDetailAgfa(),
  ));
}

class ProductDetailAgfa extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetailAgfa> {
  @override
  Widget build(BuildContext context) {
    SingleChildScrollView();
    Widget imageCarousel = new Container(
      height: 230.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/agfa-1.png'),
          AssetImage('assets/images/agfa-2.png'),
          AssetImage('assets/images/agfa-3.png'),
          AssetImage('assets/images/agfa-4.png'),
          AssetImage('assets/images/agfa-5.png'),
          AssetImage('assets/images/agfa-6.png'),
          AssetImage('assets/images/agfa-7.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 6000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.cyan[900],
        title: Text('Product'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          imageCarousel,

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),

          //Horizontal list view begins here

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text('Recent products'),
          ),

          //grid view
          Container(
            height: 220.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
