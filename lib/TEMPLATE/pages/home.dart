import 'package:PortalSales/TEMPLATE/block/BlockPost.dart';
import 'package:PortalSales/TEMPLATE/pages/detailPost.dart';
import 'package:PortalSales/TEMPLATE/widget/CardPost.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BlockPost blockPost = Provider.of<BlockPost>(context);
    blockPost.fetchpost();

    return Scaffold(
      appBar: AppBar(
        title: Text('Template Dokter'),
        centerTitle: true,
        backgroundColor: Color(0xFF44B0BB),
      ),
      body: blockPost.listpost != null
          ? ListView.builder(
              itemCount: blockPost.listpost.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    blockPost.templatePost =
                        blockPost.listpost[index].templateid;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailPost(blockPost.listpost[index].templateid)),
                    );
                  },
                  child: cardPost(blockPost.listpost[index].templateid,
                      blockPost.listpost[index].fill),
                );
              })
          : Center(child: CircularProgressIndicator()),
    );
  }
}
