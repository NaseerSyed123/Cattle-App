// To parse this JSON data, do
//
//     final getAppointmentHistory = getAppointmentHistoryFromJson(jsonString);

import 'dart:convert';

List<GetAppointmentHistory> getAppointmentHistoryFromJson(String str) => List<GetAppointmentHistory>.from(json.decode(str).map((x) => GetAppointmentHistory.fromJson(x)));

String getAppointmentHistoryToJson(List<GetAppointmentHistory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAppointmentHistory {
  GetAppointmentHistory({
    this.data,
  });

  List<Datum> data;

  factory GetAppointmentHistory.fromJson(Map<String, dynamic> json) => GetAppointmentHistory(
    data: List<Datum>.from(json["Data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.id,
    this.patientId,
    this.doctorId,
    this.purposeAppointment,
    this.appointmentDate,
    this.appointmentTimeId,
    this.appointmentDoctorNotice,
    this.status,
    this.diseases,
    this.patient,
    this.doctor,
    this.appointmentTime,
    this.documents,
    this.appointmentUpdatedTime,
  });

  int id;
  int patientId;
  int doctorId;
  String purposeAppointment;
  String appointmentDate;
  int appointmentTimeId;
  dynamic appointmentDoctorNotice;
  int status;
  List<DatumDisease> diseases;
  Doctor patient;
  Doctor doctor;
  AppointmentTime appointmentTime;
  List<dynamic> documents;
  dynamic appointmentUpdatedTime;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    patientId: json["patient_id"],
    doctorId: json["doctor_id"],
    purposeAppointment: json["purpose_appointment"],
    appointmentDate: json["appointment_date"],
    appointmentTimeId: json["appointment_time_id"],
    appointmentDoctorNotice: json["appointment_doctor_notice"],
    status: json["status"],
    diseases: List<DatumDisease>.from(json["Diseases"].map((x) => DatumDisease.fromJson(x))),
    patient: Doctor.fromJson(json["Patient"]),
    doctor: Doctor.fromJson(json["Doctor"]),
    appointmentTime: AppointmentTime.fromJson(json["AppointmentTime"]),
    documents: List<dynamic>.from(json["Documents"].map((x) => x)),
    appointmentUpdatedTime: json["AppointmentUpdatedTime"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "patient_id": patientId,
    "doctor_id": doctorId,
    "purpose_appointment": purposeAppointment,
    "appointment_date": appointmentDate,
    "appointment_time_id": appointmentTimeId,
    "appointment_doctor_notice": appointmentDoctorNotice,
    "status": status,
    "Diseases": List<dynamic>.from(diseases.map((x) => x.toJson())),
    "Patient": patient.toJson(),
    "Doctor": doctor.toJson(),
    "AppointmentTime": appointmentTime.toJson(),
    "Documents": List<dynamic>.from(documents.map((x) => x)),
    "AppointmentUpdatedTime": appointmentUpdatedTime,
  };
}

class AppointmentTime {
  AppointmentTime({
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

  factory AppointmentTime.fromJson(Map<String, dynamic> json) => AppointmentTime(
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

class AppointmentUpdatedTimeValue {
  AppointmentUpdatedTimeValue({
    this.id,
    this.appointmentId,
    this.status,
    this.notice,
  });

  int id;
  int appointmentId;
  int status;
  dynamic notice;

  factory AppointmentUpdatedTimeValue.fromJson(Map<String, dynamic> json) => AppointmentUpdatedTimeValue(
    id: json["id"],
    appointmentId: json["appointment_id"],
    status: json["status"],
    notice: json["notice"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "appointment_id": appointmentId,
    "status": status,
    "notice": notice,
  };
}

class DatumDisease {
  DatumDisease({
    this.name,
    this.id,
    this.doctorAppointmentId,
    this.diseaseId,
  });

  String name;
  int id;
  int doctorAppointmentId;
  int diseaseId;

  factory DatumDisease.fromJson(Map<String, dynamic> json) => DatumDisease(
    name: json["name"],
    id: json["id"],
    doctorAppointmentId: json["doctor_appointment_id"],
    diseaseId: json["disease_id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "id": id,
    "doctor_appointment_id": doctorAppointmentId,
    "disease_id": diseaseId,
  };
}

class Doctor {
  Doctor({
    this.id,
    this.firstName,
    this.lastName,
    this.phone,
    this.experienced,
    this.degree,
    this.degreeAddress,
    this.maximumResponseTime,
    this.email,
    this.pic,
    this.country,
    this.state,
    this.city,
    this.address,
    this.postal,
    this.creditCards,
    this.diseases,
  });

  int id;
  FirstName firstName;
  LastName lastName;
  String phone;
  Experienced experienced;
  Degree degree;
  DegreeAddress degreeAddress;
  int maximumResponseTime;
  Email email;
  Pic pic;
  String country;
  String state;
  String city;
  Address address;
  dynamic postal;
  List<dynamic> creditCards;
  List<DoctorDisease> diseases;

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
    id: json["id"],
    firstName: firstNameValues.map[json["first_name"]],
    lastName: lastNameValues.map[json["last_name"]],
    phone: json["phone"],
    experienced: json["experienced"] == null ? null : experiencedValues.map[json["experienced"]],
    degree: json["degree"] == null ? null : degreeValues.map[json["degree"]],
    degreeAddress: json["degree_address"] == null ? null : degreeAddressValues.map[json["degree_address"]],
    maximumResponseTime: json["maximum_response_time"] == null ? null : json["maximum_response_time"],
    email: emailValues.map[json["email"]],
    pic: picValues.map[json["pic"]],
    country: json["country"],
    state: json["state"],
    city: json["city"],
    address: addressValues.map[json["address"]],
    postal: json["postal"],
    creditCards: List<dynamic>.from(json["CreditCards"].map((x) => x)),
    diseases: List<DoctorDisease>.from(json["Diseases"].map((x) => DoctorDisease.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstNameValues.reverse[firstName],
    "last_name": lastNameValues.reverse[lastName],
    "phone": phone,
    "experienced": experienced == null ? null : experiencedValues.reverse[experienced],
    "degree": degree == null ? null : degreeValues.reverse[degree],
    "degree_address": degreeAddress == null ? null : degreeAddressValues.reverse[degreeAddress],
    "maximum_response_time": maximumResponseTime == null ? null : maximumResponseTime,
    "email": emailValues.reverse[email],
    "pic": picValues.reverse[pic],
    "country": country,
    "state": state,
    "city": city,
    "address": addressValues.reverse[address],
    "postal": postal,
    "CreditCards": List<dynamic>.from(creditCards.map((x) => x)),
    "Diseases": List<dynamic>.from(diseases.map((x) => x.toJson())),
  };
}

enum Address { GFSDSD, RAWALPINDI }

final addressValues = EnumValues({
  "gfsdsd": Address.GFSDSD,
  "Rawalpindi": Address.RAWALPINDI
});

enum Degree { MBBS }

final degreeValues = EnumValues({
  "MBBS": Degree.MBBS
});

enum DegreeAddress { LONDON }

final degreeAddressValues = EnumValues({
  "London": DegreeAddress.LONDON
});

class DoctorDisease {
  DoctorDisease({
    this.id,
    this.userId,
    this.diseasId,
  });

  int id;
  int userId;
  int diseasId;

  factory DoctorDisease.fromJson(Map<String, dynamic> json) => DoctorDisease(
    id: json["id"],
    userId: json["user_id"],
    diseasId: json["diseas_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "diseas_id": diseasId,
  };
}

enum Email { FAIZA_GMAIL_COM, ZEESHANZAHEER574_GMAIL_COM }

final emailValues = EnumValues({
  "faiza@gmail.com": Email.FAIZA_GMAIL_COM,
  "zeeshanzaheer574@gmail.com": Email.ZEESHANZAHEER574_GMAIL_COM
});

enum Experienced { THE_105_YEARS }

final experiencedValues = EnumValues({
  "10.5 Years": Experienced.THE_105_YEARS
});

enum FirstName { MIS, RANA }

final firstNameValues = EnumValues({
  "Mis": FirstName.MIS,
  "Rana": FirstName.RANA
});

enum LastName { FAIZA, THE_007 }

final lastNameValues = EnumValues({
  "Faiza": LastName.FAIZA,
  "007": LastName.THE_007
});

enum Pic { THE_5753982532_JPG, THE_7718961341_PNG }

final picValues = EnumValues({
  "5753982532.jpg": Pic.THE_5753982532_JPG,
  "7718961341.png": Pic.THE_7718961341_PNG
});

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
