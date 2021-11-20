import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:cattle_app/pitem/Appointments.dart';

import 'Appointrments.dart';

class AppointmentsService {
  static String _url = 'https://jsonplaceholder.typicode.com/todos';

  // URL

  static Future browse() async {
    print("printig from service >>>???");
    Map<String, String> header = {
      "Content-Type": "application/json",
    };
// copy # 1
    Map<String, String> data = {"user_id": "921", "role": "Patient"};

    Map<String, String> userHeader = {
      "Content-type": "application/json",
      "Accept": "application/json",
      "Authorization":
          "Bearer wwfaadmcmsvbtldzxlenjxhxakwyriwhrxcbkgfpnlccyhhxexvzfixxjtjg",
    };
    // copy # 2
    Uri _urlString = Uri.http("welldoneapps.net",
        "medical-8/laravel/public/api/getAppointments", data);
    print("flow is here 1");
    http.Response response = await http.post(_urlString, headers: userHeader);

    print("flow is here 2");

    // response = await http.post(_urlString,body: jsonEncode(data),headers: userHeader);
    String content = response.body;
    print("printig from service >>>1 ${content}");
    var cont = [content];
    List collection = json.decode(cont.toString());

    List<Appointments> _appointmentList =
        collection.map((json) => Appointments.fromJson(json)).toList();

    print("the count is ${_appointmentList.length}");
    return _appointmentList;
  }
}

void main() {
  AppointmentsService.browse();
}
