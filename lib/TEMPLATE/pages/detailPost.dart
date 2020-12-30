import 'package:PortalSales/TEMPLATE/block/BlockPost.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:PortalSales/TEMPLATE/model/PostModel.dart';

class DetailPost extends StatelessWidget {
  final int templateid;
  DetailPost(this.templateid);

  @override
  Widget build(BuildContext context) {
    final BlockPost blockPost = Provider.of<BlockPost>(context);
    blockPost.getDetail();

    Post post = blockPost.detailpost;
    return Scaffold(
      appBar: AppBar(
        title: post != null ? Text(post.fill) : Text(''),
      ),
      body: post != null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  child: Text(
                    post.templateid.toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    post.fill,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Text(
                  post.username,
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        child: Text('PREV'),
                        onPressed: () {
                          blockPost.templatePost = post.templateid - 1;
                        },
                      ),
                      RaisedButton(
                        child: Text('NEXT'),
                        onPressed: () {
                          blockPost.templatePost = post.templateid + 1;
                        },
                      )
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
