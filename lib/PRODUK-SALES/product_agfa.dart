import 'package:PortalSales/PRODUK-SALES/detail_barang_agfa.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "agfa",
      "picture": "assets/images/agfa-1.png",
    },
    {
      "name": "CR 30-Xm",
      "picture": "assets/images/agfa-2.png",
    },
    {
      "name": "DRYSTAR 5302",
      "picture": "assets/images/agfa-3.png",
    },
    {
      "name": "DRYSTAR 5503",
      "picture": "assets/images/agfa-4.png",
    },
    {
      "name": "DRYSTAR AXYS",
      "picture": "assets/images/agfa-5.png",
    },
    {
      "name": "CR 15-X",
      "picture": "assets/images/agfa-6.png",
    },
    {
      "name": "CR 12-X",
      "picture": "assets/images/agfa-7.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;

  final route;

  Single_prod({this.prod_name, this.prod_pricture, this.route});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // disini untuk nilai melihat detail barang
                  builder: (context) => new DetailBarangAgfa(
                    product_detail_name: prod_name,
                    product_detail_picture: prod_pricture,
                  ),
                ),
              );
            },
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                child: Image.asset(
                  prod_pricture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }

  ProductDetailsAgfa() {}
}
