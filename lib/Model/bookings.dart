// To parse this JSON data, do
//
//     final bookingList = bookingListFromJson(jsonString);

import 'dart:convert';

BookingList bookingListFromJson(String str) => BookingList.fromJson(json.decode(str));

String bookingListToJson(BookingList data) => json.encode(data.toJson());

class BookingList {
  String code;
  String status;
  String message;
  List<Booking> response;

  BookingList({
    required this.code,
    required this.status,
    required this.message,
    required this.response,
  });

  factory BookingList.fromJson(Map<String, dynamic> json) => BookingList(
    code: json["code"],
    status: json["status"],
    message: json["message"],
    response: List<Booking>.from(json["response"].map((x) => Booking.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "status": status,
    "message": message,
    "response": List<dynamic>.from(response.map((x) => x.toJson())),
  };
}

class Booking {
  String onward;
  String type;
  String onwardFromTime;
  String onwardToTime;
  String onwardFromLocation;
  String onwardToLocation;
  String onwardTime;
  String onwardStops;
  String responseReturn;
  String returnType;
  String returnFromTime;
  String returnToTime;
  String returnFromLocation;
  String returnToLocation;
  String returnTime;

  Booking({
    required this.onward,
    required this.type,
    required this.onwardFromTime,
    required this.onwardToTime,
    required this.onwardFromLocation,
    required this.onwardToLocation,
    required this.onwardTime,
    required this.onwardStops,
    required this.responseReturn,
    required this.returnType,
    required this.returnFromTime,
    required this.returnToTime,
    required this.returnFromLocation,
    required this.returnToLocation,
    required this.returnTime,
  });

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
    onward: json["onward"],
    type: json["type"],
    onwardFromTime: json["onward_from_time"],
    onwardToTime: json["onward_to_time"],
    onwardFromLocation: json["onward_from_location"],
    onwardToLocation: json["onward_to_location"],
    onwardTime: json["onward_time"],
    onwardStops: json["onward_stops"],
    responseReturn: json["return"],
    returnType: json["return_type"],
    returnFromTime: json["return_from_time"],
    returnToTime: json["return_to_time"],
    returnFromLocation: json["return_from_location"],
    returnToLocation: json["return_to_location"],
    returnTime: json["return_time"],
  );

  Map<String, dynamic> toJson() => {
    "onward": onward,
    "type": type,
    "onward_from_time": onwardFromTime,
    "onward_to_time": onwardToTime,
    "onward_from_location": onwardFromLocation,
    "onward_to_location": onwardToLocation,
    "onward_time": onwardTime,
    "onward_stops": onwardStops,
    "return": responseReturn,
    "return_type": returnType,
    "return_from_time": returnFromTime,
    "return_to_time": returnToTime,
    "return_from_location": returnFromLocation,
    "return_to_location": returnToLocation,
    "return_time": returnTime,
  };
}
