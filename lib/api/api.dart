import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'model.dart';

class ApiMyHerbs {
  //  final baseUrl = 'http://192.168.137.1:5000/api/tutorials';
  final baseUrl = Uri.parse('http://192.168.1.18/api/tutorials');
  // final baseUrl = Uri.parse('http://192.168.82.128:5000/api/tutorials');
  List<Herbal> listMyHerbs =[];
  Future<List<Herbal>> getAllData() async {
    log('mulai');

    try {
      final response = await http.get(baseUrl);
      // var result = await jsonDecode(response.body);
      final List result = jsonDecode(response.body);
      print(result);
      return result.map((value) => Herbal.fromJson(value)).toList();

      // listMyHerbs.addAll(result);

      // listMyHerbs = result;

      // log("data: $listMyHerbs");

      // return listMyHerbs;

    } catch (e){
      print(e.toString());
    }
    // try {
    //   final response = await http.get(baseUrl);
    //   // if (response.statusCode == 200) {
    //   // listMyHerbs = myherbsFromJson(response.body);
    //   List<Myherbs> result = await jsonDecode(response.body);

    //   // listMyHerbs = result;

    //   print(result);
    //   log(result.toString() + 'aaa');
    //   return result;
    //   // }
    // } catch (e) {
    //   log(e.toString() + "tes");
    // }
    log('selesai');
    return [];
  }

  Future<void> updateData(Herbal myherbs) async {
    try {
      final url = "$baseUrl/${myherbs.id}";
      final headers = {"Content-type": "application/json"};
      final response = await http.patch(
        Uri.parse(url),
        headers: headers,
        body: json.encode(myherbs.toJson()),
      );
      log(response.body);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> deleteData(Herbal myherbs) async {
    try {
      final url = "$baseUrl/${myherbs.id}";
      final headers = {"Content-type": "application/json"};
      final response = await http.delete(
        Uri.parse(url),
        headers: headers,
      );
      log(response.body);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> createKomen(List komen) async {
    try {
      // final headers = {"Content-type": "application/json"};
      final response = await http.put(
        baseUrl,
        // headers: headers,
        body: komen,
      );
      log(response.body);
    } catch (e) {
      log(e.toString());
    }
  }
}
