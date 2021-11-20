import 'dart:async';
import 'dart:convert';
import 'package:cattle_app/bookAppointment/BookAppointment.dart';
import 'package:cattle_app/bookAppointment/BookAppointment.dart';
import 'package:cattle_app/bookAppointment/BookAppointment.dart';
import 'package:cattle_app/bookAppointment/BookAppointment.dart';
import 'package:cattle_app/bookAppointment/BookAppointment.dart';
import 'package:http/http.dart' as http;
import 'package:cattle_app/bookAppointment/BookAppointment.dart';

class BookAppointmentService {
  static String _url = 'https://jsonplaceholder.typicode.com/todos';

  // URL

  static Future browse() async {
    print("printig from service >>>???");
    Map<String, String> header = {
      "Content-Type": "application/json",
    };
// copy # 1
    Map<String, String> data = {
    "user_id": "921",
    "diseas_ids[]": "12",
    "doctor_id" : "918",
    "appointment_purpose" : "test",
    "time_id" : "1",
    "appointment_date" : "21-06-2021"


    };

    Map<String,String> userHeader = {""
        "Content-type": "application/json",
      "Accept": "application/json",
      "Authorization":
      "Bearer wwfaadmcmsvbtldzxlenjxhxakwyriwhrxcbkgfpnlccyhhxexvzfixxjtjg",
    };
    // copy # 2
    Uri _urlString = Uri.http("welldoneapps.net", "medical-8/laravel/public/api/bookAppointment",data);
    print("flow is here 1");
    http.Response response = await http.post(_urlString,
    headers: userHeader);

    print("flow is here 2");

    // response = await http.post(_urlString,body: jsonEncode(data),headers: userHeader);
    String content = response.body;
    print("printig from service >>>1 ${content}");
    var cont = [content];
    List collection = json.decode(cont.toString());

    List<BookAppointment> _bookAppointmentList =
    collection.map((json) => BookAppointment.fromJson(json)).toList();

    print("the count is ${_bookAppointmentList.length}");
    return _bookAppointmentList;
  }

}

void main() {
  BookAppointmentService.browse();
}



