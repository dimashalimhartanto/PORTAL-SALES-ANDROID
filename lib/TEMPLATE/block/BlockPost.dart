import 'dart:convert';

import 'package:PortalSales/TEMPLATE/model/PostModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class BlockPost extends ChangeNotifier {
  List<Post> _post;
  List<Post> get listpost => _post;
  set listpost(List<Post> val) {
    _post = val;
    notifyListeners();
  }

  Post _detail;
  Post get detailpost => _detail;

  set detailpost(Post val) {
    _detail = val;
    notifyListeners();
  }

  int _templateid = 0;
  int get templatePost => _templateid;
  set templatePost(int val) {
    if (val != 0) {
      _templateid = val;
    }
    notifyListeners();
  }

  Future<List<Post>> fetchpost() async {
    final response = await http.get('http://192.168.1.12/report/template.php');

    List res = jsonDecode(response.body);
    List<Post> data = [];

    for (var i = 0; i < res.length; i++) {
      var post = Post.fromJson(res[i]);
      data.add(post);
    }

    listpost = data;

    return listpost;
  }

  Future<Post> getDetail() async {
    final response = await http.get(
        'http://192.168.1.12/report/template.php' + _templateid.toString());
    detailpost = Post.fromJson(jsonDecode(response.body));
    return detailpost;
  }
}
