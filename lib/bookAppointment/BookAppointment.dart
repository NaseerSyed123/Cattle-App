// To parse this JSON data, do
//
//     final bookAppointment = bookAppointmentFromJson(jsonString);

import 'dart:convert';

List<BookAppointment> bookAppointmentFromJson(String str) => List<BookAppointment>.from(json.decode(str).map((x) => BookAppointment.fromJson(x)));

String bookAppointmentToJson(List<BookAppointment> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BookAppointment {
  BookAppointment({
    this.success,
  });

  String success;

  factory BookAppointment.fromJson(Map<String, dynamic> json) => BookAppointment(
    success: json["success"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
  };
}
