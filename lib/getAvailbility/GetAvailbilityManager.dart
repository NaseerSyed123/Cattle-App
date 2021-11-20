import 'dart:async';
// import 'package:cattle_app/findDoctor/GetAvailbility.
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
import 'package:cattle_app/getAvailbility/GetAvailbility.dart';
// import 'package:cattle_app/pitem/GetAvailbilityService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

import 'GetAvailbilityService.dart';



class GetAvailbilityManager {

  final BehaviorSubject<List<GetAvailbility>> _product = BehaviorSubject<List<GetAvailbility>>();

  Stream<List<GetAvailbility>> get productList async* {

    yield await GetAvailbilityService.browse();
  }

  GetAvailbilityManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));

  }

}