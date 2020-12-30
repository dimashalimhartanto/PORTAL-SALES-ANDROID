import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

class BlogContentWorklist extends StatefulWidget {
  final String webHTML;
  BlogContentWorklist({this.webHTML});
  @override
  _BlogContentWorklist createState() => _BlogContentWorklist();
}

class _BlogContentWorklist extends State<BlogContentWorklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF44B0BB),
          title: Text('WORKLOAD DOKTER'),
          centerTitle: true,
        ),
        body: _webViewWidget(widget.webHTML));
  }

  Widget _webViewWidget(String htmlURL) {
    return SingleChildScrollView(
      child: Html(
        data: htmlURL,
        style: {
          "body": Style(
            fontSize: FontSize(22.0),
          )
        },
      ),
    );
  }
}
