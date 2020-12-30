import 'package:PortalSales/tab_home/Product.dart';
import 'package:PortalSales/tab_home/ProductPage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProdukIntiwid extends StatefulWidget {
  @override
  _ProdukIntiwidState createState() => _ProdukIntiwidState();
}

class _ProdukIntiwidState extends State<ProdukIntiwid> {
  List bannerAdSlider = [
    "assets/images/agfa-1.png",
    "assets/images/agfa-2.png",
    "assets/images/agfa-3.png",
    "assets/images/agfa-4.png",
    "assets/images/agfa-5.png",
    "assets/images/agfa-6.png",
    "assets/images/agfa-7.png",
    "assets/images/bayer-1.png",
    "assets/images/bayer-2.png",
    "assets/images/bayer-3.png",
    "assets/images/bayer-4.png",
    "assets/images/bayer-5.png",
    "assets/images/bayer-6.png",
    "assets/images/bayer-7.png",
  ];

  List<Product> products = [
    Product(
        image: "assets/images/agfa-1.png",
        description:
            "The Agfa-Gevaert Group develops, produces and distributes an extensive range of analog and digital imaging systems and IT solutions, mainly for the printing industry and the healthcare sector, as well as for specific industrial applications.",
        price: "100",
        productName: "DT2 B"),
    Product(
        image: "assets/images/agfa-2.png",
        description:
            "The Agfa-Gevaert Group develops, produces and distributes an extensive range of analog and digital imaging systems and IT solutions, mainly for the printing industry and the healthcare sector, as well as for specific industrial applications.",
        price: "100",
        productName: "CR 30-Xm"),
    Product(
        image: "assets/images/agfa-3.png",
        description:
            "The Agfa-Gevaert Group develops, produces and distributes an extensive range of analog and digital imaging systems and IT solutions, mainly for the printing industry and the healthcare sector, as well as for specific industrial applications.",
        price: "100",
        productName: "DRYSTAR 5302"),
    Product(
        image: "assets/images/agfa-4.png",
        description:
            "The Agfa-Gevaert Group develops, produces and distributes an extensive range of analog and digital imaging systems and IT solutions, mainly for the printing industry and the healthcare sector, as well as for specific industrial applications.",
        price: "100",
        productName: "DRYSTAR 5503"),
    Product(
        image: "assets/images/agfa-5.png",
        description:
            "The Agfa-Gevaert Group develops, produces and distributes an extensive range of analog and digital imaging systems and IT solutions, mainly for the printing industry and the healthcare sector, as well as for specific industrial applications.",
        price: "100",
        productName: "DRYSTAR AXYS"),
    Product(
        image: "assets/images/agfa-6.png",
        description:
            "The Agfa-Gevaert Group develops, produces and distributes an extensive range of analog and digital imaging systems and IT solutions, mainly for the printing industry and the healthcare sector, as well as for specific industrial applications.",
        price: "100",
        productName: "CR 15-X"),
    Product(
        image: "assets/images/agfa-7.png",
        description:
            "The Agfa-Gevaert Group develops, produces and distributes an extensive range of analog and digital imaging systems and IT solutions, mainly for the printing industry and the healthcare sector, as well as for specific industrial applications.",
        price: "100",
        productName: "CR 12-X"),
    // PRODUCT BAYER
    Product(
        image: "assets/images/bayer-1.png",
        description:
            "Bayer is a Life Science company with a more than 150-year history and core competencies in the areas of health care and agriculture. With our innovative products, we are contributing to finding solutions to some of the major challenges of our time.",
        price: "100",
        productName: "Bayer MRXperion Brochure"),
    Product(
        image: "assets/images/bayer-2.png",
        description:
            "Bayer is a Life Science company with a more than 150-year history and core competencies in the areas of health care and agriculture. With our innovative products, we are contributing to finding solutions to some of the major challenges of our time.",
        price: "100",
        productName: "Disposable Syringe"),
    Product(
        image: "assets/images/bayer-3.png",
        description:
            "Bayer is a Life Science company with a more than 150-year history and core competencies in the areas of health care and agriculture. With our innovative products, we are contributing to finding solutions to some of the major challenges of our time.",
        price: "100",
        productName: "Imaxeon Salient Brochure DUAL"),
    Product(
        image: "assets/images/bayer-4.png",
        description:
            "Bayer is a Life Science company with a more than 150-year history and core competencies in the areas of health care and agriculture. With our innovative products, we are contributing to finding solutions to some of the major challenges of our time.",
        price: "100",
        productName: "Imaxeon Salientbrochure SINGLE"),
    Product(
        image: "assets/images/bayer-5.png",
        description:
            "Bayer is a Life Science company with a more than 150-year history and core competencies in the areas of health care and agriculture. With our innovative products, we are contributing to finding solutions to some of the major challenges of our time.",
        price: "100",
        productName: "MEDRAD STELLANT D"),
    Product(
        image: "assets/images/bayer-6.png",
        description:
            "Bayer is a Life Science company with a more than 150-year history and core competencies in the areas of health care and agriculture. With our innovative products, we are contributing to finding solutions to some of the major challenges of our time.",
        price: "100",
        productName: "Medrad Mark 7 Arterion Brochure"),
    Product(
        image: "assets/images/bayer-7.png",
        description:
            "Bayer is a Life Science company with a more than 150-year history and core competencies in the areas of health care and agriculture. With our innovative products, we are contributing to finding solutions to some of the major challenges of our time.",
        price: "100",
        productName: "Medrad Spectics Solaris EP"),
  ];

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Product Intiwid",
          style: TextStyle(
            color: Colors.cyan[900],
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(EvaIcons.menu2Outline),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(EvaIcons.shoppingBagOutline),
          ),
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(16),
              ),
              accountEmail: Text(
                "intimedika@gmail.com",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              accountName: Text(
                "intiwid",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Home"),
              leading: Icon(EvaIcons.homeOutline),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Account"),
              leading: Icon(EvaIcons.personOutline),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Electronics"),
              leading: Icon(EvaIcons.bulbOutline),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Fashion"),
              leading: Icon(EvaIcons.heartOutline),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 16 / 5,
                  child: Image.asset(
                    "assets/images/agfa.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              // banner ad slider

              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 19 / 9,
                  autoPlay: true,
                ),
                items: bannerAdSlider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 12.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            image: AssetImage(i),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              // banner ad slider

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Products",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              GridView.count(
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.25,
                children: products.map((product) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Hero(
                              tag: product.image,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image(
                                  image: AssetImage(product.image),
                                ),
                              ),
                            ),
                            Text(
                              product.productName,
                            ),
                            Text(
                              "${product.price}\$",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                    product: product,
                                  ),
                                ));
                          },
                        ),
                      )
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
