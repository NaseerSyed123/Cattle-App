import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cattle_app/status/Status.dart';

class StatusService {
  static String _url = 'https://jsonplaceholder.typicode.com/todos';
  // URL

  static Future browse() async {
    print("printig from service >>>???");
    Map<String,String> header = {
      "Content-Type" : "application/json",
    };
// copy # 1
    Map<String,String> data = {
      "user_id": "3",
      "item_category_id": "2",
      "post_date": "21-04-2021",
      "api_token": "dKz99vl2FrdIpccgb1GUbXcNgfzpqvLrEg6gs5EscioQzy2iwdezfWEuLUY2",

    };

    Map<String,String> userHeader = {"Content-type": "application/json", "Accept": "application/json"};
    // copy # 2
    Uri _urlString  = Uri.http("welldoneapps.net", "/7min/public/api/getposts",data);
    print("flow is here 1");
    http.Response response = await http.get(_urlString,
        headers: userHeader);

    print("flow is here 2");

    // response = await http.post(_urlString,body: jsonEncode(data),headers: userHeader);
    String content = response.body;
    print("printig from service >>>1 ${content}");
    // List collection = json.decode(content);
    //
    // List<Status> _pitem =
    // collection.map((json) => Status.fromJson(json)).toList();
    //
    // print("the count is ${_pitem.length}");
    return null;
  }

}

void main() {

  StatusService.browse();
}



