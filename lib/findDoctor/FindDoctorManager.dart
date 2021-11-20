import 'dart:async';
import 'package:cattle_app/findDoctor/FindDoctor.dart';
// import 'package:cattle_app/pitem/FindDoctorService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

import 'FindDoctorService.dart';

class FindDoctorManager {

  final BehaviorSubject<List<FindDoctor>> _product = BehaviorSubject<List<FindDoctor>>();

  Stream<List<FindDoctor>> get productList async* {

    yield await FindDoctorService.browse();
  }

  FindDoctorManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));

  }

}