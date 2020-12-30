import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RecommendCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  RecommendCard({
    @required this.imageUrl,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 250,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 97,
                height: 99,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 250,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Feather.tag,
                          color: Colors.grey[500],
                          size: 10,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
