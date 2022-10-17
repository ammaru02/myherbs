// To parse this JSON data, do
//
//     final herbal = herbalFromJson(jsonString);

import 'dart:convert';

List<Herbal> herbalFromJson(String str) =>
    List<Herbal>.from(json.decode(str).map((x) => Herbal.fromJson(x)));

String herbalToJson(List<Herbal> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Herbal {
  Herbal({
    required this.namaTanaman,
    required this.namaLatin,
    required this.gambar,
    required this.khasiat,
    required this.pengolahan,
    required this.deskripsi,
    required this.komen,
    required this.validate,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
  });

  String namaTanaman;
  String namaLatin;
  String gambar;
  String khasiat;
  String pengolahan;
  String deskripsi;
  List komen;
  bool validate;
  DateTime createdAt;
  DateTime updatedAt;
  String id;

  factory Herbal.fromJson(Map<String, dynamic> json) => Herbal(
        namaTanaman: json["nama_tanaman"],
        namaLatin: json["nama_latin"],
        gambar: json["gambar"],
        khasiat: json["khasiat"],
        pengolahan: json["pengolahan"],
        deskripsi: json["deskripsi"],
        komen: List.from(json["komen"]),
        validate: json["validate"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "nama_tanaman": namaTanaman,
        "nama_latin": namaLatin,
        "gambar": gambar,
        "khasiat": khasiat,
        "pengolahan": pengolahan,
        "deskripsi": deskripsi,
        "komen": List<dynamic>.from(komen.map((x) => x.toJson())),
        "validate": validate,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "id": id,
      };
}

class Komen {
  Komen({
    this.user,
    required this.komen,
    this.id,
  });

  String? user;
  String komen;
  String? id;

  factory Komen.fromJson(Map<String, dynamic> json) => Komen(
        user: json["user"],
        komen: json["komen"],
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "komen": komen,
        "_id": id,
      };
}
