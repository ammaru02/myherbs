// import 'dart:convert';
// import 'dart:developer';

// import 'package:http/http.dart' as http;

// import 'model.dart';

// class ApiMyHerbsUser {
//   //  final baseUrl = 'http://192.168.137.1:5000/api/tutorials';
//   final baseUrl = Uri.parse('http://localhost:5000/api/users');
//   // final baseUrl = Uri.parse('http://192.168.82.128:5000/api/users');
//   var listMyHerbs = <Herbal>[];
//   Future<List<Myherbs>> getAllData() async {
//     log('mulai');
//     try {
//       final response = await http.get(baseUrl);
//       if (response.statusCode == 200) {
//         listMyHerbs = myherbsFromJson(response.body);
//         log(listMyHerbs.toString() + 'aaa');
//         return listMyHerbs;
//       }
//     } catch (e) {
//       log(e.toString() + "tes");
//     }
//     log('selesai');
//     return [];
//   }

//   Future<void> updateData(Myherbs myherbs) async {
//     try {
//       final url = "$baseUrl/${myherbs.id}";
//       final headers = {"Content-type": "application/json"};
//       final response = await http.patch(
//         Uri.parse(url),
//         headers: headers,
//         body: json.encode(myherbs.toJson()),
//       );
//       log(response.body);
//     } catch (e) {
//       log(e.toString());
//     }
//   }

//   Future<void> deleteData(Myherbs myherbs) async {
//     try {
//       final url = "$baseUrl/${myherbs.id}";
//       final headers = {"Content-type": "application/json"};
//       final response = await http.delete(
//         Uri.parse(url),
//         headers: headers,
//       );
//       log(response.body);
//     } catch (e) {
//       log(e.toString());
//     }
//   }

//   Future<void> inputData(Myherbs myherbs) async {
//     try {
//       final headers = {"Content-type": "application/json"};
//       final response = await http.post(
//         baseUrl,
//         headers: headers,
//         body: json.encode(myherbs.toJson()),
//       );
//       log(response.body);
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }
