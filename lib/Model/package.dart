// To parse this JSON data, do
//
//     final packageList = packageListFromJson(jsonString);

import 'dart:convert';

PackageList packageListFromJson(String str) => PackageList.fromJson(json.decode(str));

String packageListToJson(PackageList data) => json.encode(data.toJson());

class PackageList {
  String code;
  String status;
  String message;
  List<Package> response;

  PackageList({
    required this.code,
    required this.status,
    required this.message,
    required this.response,
  });

  factory PackageList.fromJson(Map<String, dynamic> json) => PackageList(
    code: json["code"],
    status: json["status"],
    message: json["message"],
    response: List<Package>.from(json["response"].map((x) => Package.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "status": status,
    "message": message,
    "response": List<dynamic>.from(response.map((x) => x.toJson())),
  };
}

class Package {
  String date;
  String desc;

  Package({
    required this.date,
    required this.desc,
  });

  factory Package.fromJson(Map<String, dynamic> json) => Package(
    date: json["date"],
    desc: json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "date": date,
    "desc": desc,
  };
}
