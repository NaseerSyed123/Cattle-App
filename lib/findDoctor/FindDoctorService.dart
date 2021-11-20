import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cattle_app/findDoctor/FindDoctor.dart';

import 'FindDoctor.dart';

class FindDoctorService {
  static String _url = 'https://jsonplaceholder.typicode.com/todos';

  // URL

  static Future browse() async {
    print("printig from service >>>???");
    Map<String, String> header = {
      "Content-Type": "application/json",
    };
// copy # 1
    Map<String, String> data = {
      "city_id": "29471",
      "diseas_ids[]": "12",
    };

    Map<String, String> userHeader = {
      ""
          "Content-type": "application/json",
      "Accept": "application/json",
      "Authorization":
          "Bearer wwfaadmcmsvbtldzxlenjxhxakwyriwhrxcbkgfpnlccyhhxexvzfixxjtjg",
    };
    // copy # 2
    Uri _urlString = Uri.http(
        "welldoneapps.net", "medical-8/laravel/public/api/findDoctors", data);
    print("flow is here 1");
    http.Response response = await http.post(_urlString, headers: userHeader);

    print("flow is here 2");

    // response = await http.post(_urlString,body: jsonEncode(data),headers: userHeader);
    String content = response.body;
    print("printig from service >>>1 ${content}");
    var cont = [content];
    List collection = json.decode(cont.toString());

    List<FindDoctor> _findDoctorList =
        collection.map((json) => FindDoctor.fromJson(json)).toList();

    print("the count is ${_findDoctorList.length}");
    return _findDoctorList;
  }
}

void main() {
  FindDoctorService.browse();
}
