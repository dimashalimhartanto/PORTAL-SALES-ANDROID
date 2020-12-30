import 'package:PortalSales/main_html.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:webview_flutter/webview_flutter.dart';

class MobileViewer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MobileViewerState();
  }
}

class _MobileViewerState extends State<MobileViewer> {
  //
  WebViewController _webViewController;
  // String filePath = 'files/test.html';

  String url =
      'http://36.92.153.227:19898/dwv-viewer/index.html?type=manifest&input=%2Fweasis-pacs-connector%2Fmanifest%3FseriesUID%3D1.3.12.2.1107.5.1.4.65030.30000020111602355447900000020';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Material(
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WorklistDokter()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xFFFF5A5F),
                  ),
                ),
                SizedBox(
                  height: 90,
                  child: Image.asset(
                    'assets/images/logo3.png',
                  ),
                ),
                Stack(children: <Widget>[
                  Icon(
                    Icons.notifications_none,
                    color: Colors.grey[400],
                  ),
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: Icon(
                      Icons.brightness_1,
                      size: 8.0,
                      color: Color(0xFFFF5A5F),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _webViewController = webViewController;
          //_loadHtmlFromAssets();
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: () {
      //     _webViewController.evaluateJavascript('add(10, 10)');
      //   },
      // ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileHtmlContents = await rootBundle.loadString(url);
    _webViewController.loadUrl(Uri.dataFromString(fileHtmlContents,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}
