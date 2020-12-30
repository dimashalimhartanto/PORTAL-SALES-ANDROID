import 'package:flutter/material.dart';

class DetailBarangAgfa extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;

  DetailBarangAgfa({this.product_detail_name, this.product_detail_picture});

  @override
  _DetailBarangState createState() => _DetailBarangState();
}

class _DetailBarangState extends State<DetailBarangAgfa> {
  @override
  Widget build(BuildContext context) {
    SingleChildScrollView();
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
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                ),
              ),
            ),
          ),
//        ========================= tombol pertama ==================
          Row(
            children: <Widget>[
              // ukuran dari button =======
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Merk"),
                            content: new Text(
                              "Choose the merk",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Merk"),
                      ),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Qty"),
                            content: new Text("Choose a Quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              // ukuran dari button =======
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.orange,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Order Now")),
              ),

              new IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.orange[900],
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text(
              "Product informasion",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Text(
              "The Agfa-Gevaert Group develops, produces and distributes an extensive range of analog and digital imaging systems and IT solutions, mainly for the printing industry and the healthcare sector, as well as for specific industrial applications.",
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Category  : ",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(
                  "Modality & Film",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Country    :",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(
                  "Mortsel, Belgia",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product    :",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(
                  "Agfa",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Contact Us :",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(
                  "sales@intimedika.co",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
