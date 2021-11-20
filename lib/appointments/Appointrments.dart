// To parse this JSON data, do
//
//     final appointments = appointmentsFromJson(jsonString);

import 'dart:convert';

List<Appointments> appointmentsFromJson(String str) => List<Appointments>.from(json.decode(str).map((x) => Appointments.fromJson(x)));

String appointmentsToJson(List<Appointments> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Appointments {
  Appointments({
    this.data,
  });

  List<Datum> data;

  factory Appointments.fromJson(Map<String, dynamic> json) => Appointments(
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
  DateTime appointmentDate;
  int appointmentTimeId;
  dynamic appointmentDoctorNotice;
  int status;
  List<DatumDisease> diseases;
  Doctor patient;
  Doctor doctor;
  AppointmentTime appointmentTime;
  List<dynamic> documents;
  Map<String, AppointmentUpdatedTime> appointmentUpdatedTime;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    patientId: json["patient_id"],
    doctorId: json["doctor_id"],
    purposeAppointment: json["purpose_appointment"],
    appointmentDate: DateTime.parse(json["appointment_date"]),
    appointmentTimeId: json["appointment_time_id"],
    appointmentDoctorNotice: json["appointment_doctor_notice"],
    status: json["status"],
    diseases: List<DatumDisease>.from(json["Diseases"].map((x) => DatumDisease.fromJson(x))),
    patient: Doctor.fromJson(json["Patient"]),
    doctor: Doctor.fromJson(json["Doctor"]),
    appointmentTime: AppointmentTime.fromJson(json["AppointmentTime"]),
    documents: List<dynamic>.from(json["Documents"].map((x) => x)),
    appointmentUpdatedTime: Map.from(json["AppointmentUpdatedTime"]).map((k, v) => MapEntry<String, AppointmentUpdatedTime>(k, AppointmentUpdatedTime.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "patient_id": patientId,
    "doctor_id": doctorId,
    "purpose_appointment": purposeAppointment,
    "appointment_date": "${appointmentDate.year.toString().padLeft(4, '0')}-${appointmentDate.month.toString().padLeft(2, '0')}-${appointmentDate.day.toString().padLeft(2, '0')}",
    "appointment_time_id": appointmentTimeId,
    "appointment_doctor_notice": appointmentDoctorNotice,
    "status": status,
    "Diseases": List<dynamic>.from(diseases.map((x) => x.toJson())),
    "Patient": patient.toJson(),
    "Doctor": doctor.toJson(),
    "AppointmentTime": appointmentTime.toJson(),
    "Documents": List<dynamic>.from(documents.map((x) => x)),
    "AppointmentUpdatedTime": Map.from(appointmentUpdatedTime).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
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

class AppointmentUpdatedTime {
  AppointmentUpdatedTime({
    this.id,
    this.appointmentId,
    this.status,
    this.notice,
  });

  int id;
  int appointmentId;
  int status;
  dynamic notice;

  factory AppointmentUpdatedTime.fromJson(Map<String, dynamic> json) => AppointmentUpdatedTime(
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
  String firstName;
  String lastName;
  String phone;
  String experienced;
  String degree;
  String degreeAddress;
  int maximumResponseTime;
  String email;
  dynamic pic;
  String country;
  String state;
  String city;
  String address;
  dynamic postal;
  List<dynamic> creditCards;
  List<DoctorDisease> diseases;

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    phone: json["phone"],
    experienced: json["experienced"] == null ? null : json["experienced"],
    degree: json["degree"] == null ? null : json["degree"],
    degreeAddress: json["degree_address"] == null ? null : json["degree_address"],
    maximumResponseTime: json["maximum_response_time"] == null ? null : json["maximum_response_time"],
    email: json["email"],
    pic: json["pic"],
    country: json["country"],
    state: json["state"],
    city: json["city"],
    address: json["address"],
    postal: json["postal"],
    creditCards: List<dynamic>.from(json["CreditCards"].map((x) => x)),
    diseases: List<DoctorDisease>.from(json["Diseases"].map((x) => DoctorDisease.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "phone": phone,
    "experienced": experienced == null ? null : experienced,
    "degree": degree == null ? null : degree,
    "degree_address": degreeAddress == null ? null : degreeAddress,
    "maximum_response_time": maximumResponseTime == null ? null : maximumResponseTime,
    "email": email,
    "pic": pic,
    "country": country,
    "state": state,
    "city": city,
    "address": address,
    "postal": postal,
    "CreditCards": List<dynamic>.from(creditCards.map((x) => x)),
    "Diseases": List<dynamic>.from(diseases.map((x) => x.toJson())),
  };
}

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
