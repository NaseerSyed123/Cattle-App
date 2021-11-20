import 'dart:async';
import 'package:cattle_app/pitem/PitemManager.dart';
import 'package:cattle_app/pitem/PitemService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

import 'Mobile.dart';
import 'MobileService.dart';

class MobileManager {

  final BehaviorSubject<List<Mobile>> _product = BehaviorSubject<List<Mobile>>();

  Stream<List<Mobile>> get productList async* {

    yield await MobileService.browse();
  }

  MobileManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));

  }

}