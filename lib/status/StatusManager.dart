import 'dart:async';
// import 'package:cattle_app/pitem/Status.dart';
// import 'package:cattle_app/pitem/StatusService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

import 'Status.dart';
import 'StatusService.dart';

class StatusManager {

  final BehaviorSubject<List<Status>> _product = BehaviorSubject<List<Status>>();

  Stream<List<Status>> get productList async* {

    yield await StatusService.browse();
  }

  StatusManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));

  }

}