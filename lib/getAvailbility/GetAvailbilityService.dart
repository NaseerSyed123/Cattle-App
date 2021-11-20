import 'dart:async';
import 'dart:convert';
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
import 'package:http/http.dart' as http;




class GetAvailbilityService {
  static String _url = 'https://jsonplaceholder.typicode.com/todos';

  // URL

  static Future browse() async {
    print("printig from service >>>???");
    Map<String, String> header = {
      "Content-Type": "application/json",
    };
// copy # 1
    Map<String, String> data = {
      "user_id": "908",

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
        "welldoneapps.net", "medical-8/laravel/public/api/getAvailbilty", data);
    print("flow is here 1");
    http.Response response = await http.post(_urlString, headers: userHeader);

    print("flow is here 2");

    // response = await http.post(_urlString,body: jsonEncode(data),headers: userHeader);
    String content = response.body;
    print("printig from service >>>1 ${content}");
    var cont = [content];
    List collection = json.decode(cont.toString());

    List<GetAvailbility> _getAvailbilityList =
        collection.map((json) => GetAvailbility.fromJson(json)).toList();

    print("the count is ${_getAvailbilityList.length}");
    return _getAvailbilityList;
  }
}

void main() {
  GetAvailbilityService.browse();
}
