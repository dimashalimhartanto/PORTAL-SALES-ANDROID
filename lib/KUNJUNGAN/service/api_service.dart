import 'dart:convert';

import 'package:PortalSales/KUNJUNGAN/model/response_kunjungan_model.dart';
import 'package:PortalSales/KUNJUNGAN/model/response_post_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static final _host = 'http://localhost:8080/product';

  static Future<List<Barang>> getListBarang() async {
    List<Barang> listBarang = [];
    final response = await http.get('$_host/product/index'); //data json

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      ResponseBarang respBarang = ResponseBarang.fromJson(json);

      respBarang.barang.forEach((item) {
        listBarang.add(item);
      });

      return listBarang;
    } else {
      return [];
    }
  }

  Future<ResponsePost> postBarang(namakunjungan, hpkunjungan, emailkunjungan,
      jabatankunjungan, rskunjungan, reqkunjungan, hasilkunjungan) async {
    final response = await http.post('$_host/product/create', body: {
      'nama_kunjungan': namakunjungan,
      'hp_kunjungan': hpkunjungan,
      'email_kunjungan': emailkunjungan,
      'jabatan_kunjungan': jabatankunjungan,
      'rs_kunjungan': rskunjungan,
      'req_kunjungan': reqkunjungan,
      'hasil_kunjungan': hasilkunjungan,
    });

    if (response.statusCode == 200) {
      ResponsePost responseRequest =
          ResponsePost.fromJson(jsonDecode(response.body));

      return responseRequest;
    } else {
      return null;
    }
  }

  Future<ResponsePost> updateBarang(
      id,
      namakunjungan,
      hpkunjungan,
      emailkunjungan,
      jabatankunjungan,
      rskunjungan,
      reqkunjungan,
      hasilkunjungan) async {
    final response = await http.post('$_host/update', body: {
      "nama_kunjungan": namakunjungan,
      'hp_kunjungan': hpkunjungan,
      'email_kunjungan': emailkunjungan,
      'jabatan_kunjungan': jabatankunjungan,
      'rs_kunjungan': rskunjungan,
      'req_kunjungan': reqkunjungan,
      'hasil_kunjungan': hasilkunjungan,
    });

    if (response.statusCode == 200) {
      ResponsePost responseRequest =
          ResponsePost.fromJson(jsonDecode(response.body));
      return responseRequest;
    } else {
      return null;
    }
  }

  Future<ResponsePost> delBarang(id) async {
    final response =
        await http.post('$_host/delete', body: {'pk_kunjungan': id});

    if (response.statusCode == 200) {
      ResponsePost responseRequest =
          ResponsePost.fromJson(jsonDecode(response.body));

      return responseRequest;
    } else {
      return null;
    }
  }
}
