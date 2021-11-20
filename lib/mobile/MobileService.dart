import 'dart:async';
import 'dart:convert';
import 'package:cattle_app/mobile/Mobile.dart';

import 'package:http/http.dart' as http;


class MobileService {
  static String _url = 'https://jsonplaceholder.typicode.com/todos';
  // URL

  static Future browse() async {
    print("printig from service >>>???");
    Map<String,String> header = {
      "Content-Type" : "application/json",
    };

    // @ Doctor ("role" : "Doctor")
    // @ Patient ("role" : "Patient")

    Map<String,String> data = {
      "first_name": "Naseer",
      "last_name": "Ahsan",
      "password": "done",
      "password_confirm" : "done",
      "email" : "naseerpt20@gmail.com",
      "phone" : "923077451360",
      "gender" : "male",
      "country" : "163",
      "state" : "63",
      "city" : "29471",
      "role" : "Patient",
      "diseas_ids[]" : "1",
      "diseas_ids[]" : "2",



    };

    Map<String,String> userHeader = {
      "Content-type": "application/json",
      "Accept": "application/json",
      "Authorization": "Bearer wwfaadmcmsvbtldzxlenjxhxakwyriwhrxcbkgfpnlccyhhxexvzfixxjtjg",

    };
    // copy # 2
    Uri _urlString  = Uri.http("welldoneapps.net", "medical-8/laravel/public/api/register",data);
    print("flow is here 1");
    http.Response response = await http.post(_urlString,
        headers: userHeader);

    print("flow is here 2");

    // response = await http.post(_urlString,body: jsonEncode(data),headers: userHeader);
    String content = response.body;
    print("printig from service >>>1 ${content}");
    var cont = [content];
    List collection = json.decode(cont.toString());

    List<Mobile> _mobileList =
    collection.map((json) => Mobile.fromJson(json)).toList();
    Mobile mob = _mobileList[0];
    if(mob.user != null) {
      print("id  ${mob.user.id}");
      print("disease ${mob.user.diseases}");
      print("email ${mob.user.email}");
    }
    print("the count is ${_mobileList.length}");

    return _mobileList;
  }

}

void main() {

  MobileService.browse();
}



