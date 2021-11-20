// To parse this JSON data, do
//
//     final getAvailbility = getAvailbilityFromJson(jsonString);

import 'dart:convert';

List<GetAvailbility> getAvailbilityFromJson(String str) => List<GetAvailbility>.from(json.decode(str).map((x) => GetAvailbility.fromJson(x)));

String getAvailbilityToJson(List<GetAvailbility> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAvailbility {
  GetAvailbility({
    this.data,
  });

  List<Datum> data;

  factory GetAvailbility.fromJson(Map<String, dynamic> json) => GetAvailbility(
    data: List<Datum>.from(json["Data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.id,
    this.availabledate,
    this.status,
    this.userId,
    this.rememberToken,
    this.timing,
  });

  int id;
  DateTime availabledate;
  Status status;
  int userId;
  dynamic rememberToken;
  List<Timing> timing;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    availabledate: DateTime.parse(json["availabledate"]),
    status: statusValues.map[json["status"]],
    userId: json["user_id"],
    rememberToken: json["remember_token"],
    timing: List<Timing>.from(json["Timing"].map((x) => Timing.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "availabledate": availabledate.toIso8601String(),
    "status": statusValues.reverse[status],
    "user_id": userId,
    "remember_token": rememberToken,
    "Timing": List<dynamic>.from(timing.map((x) => x.toJson())),
  };
}

enum Status { AVAILABLE }

final statusValues = EnumValues({
  "available": Status.AVAILABLE
});

class Timing {
  Timing({
    this.id,
    this.availabilityclanderId,
    this.fromTime,
    this.toTime,
    this.status,
  });

  int id;
  int availabilityclanderId;
  String fromTime;
  String toTime;
  int status;

  factory Timing.fromJson(Map<String, dynamic> json) => Timing(
    id: json["id"],
    availabilityclanderId: json["availabilityclander_id"],
    fromTime: json["from_time"],
    toTime: json["to_time"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "availabilityclander_id": availabilityclanderId,
    "from_time": fromTime,
    "to_time": toTime,
    "status": status,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
