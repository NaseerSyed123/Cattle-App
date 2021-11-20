import 'dart:async';
import 'package:cattle_app/setAvailbility/SetAvailbility.dart';
import 'package:cattle_app/setAvailbility/SetAvailbilityService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

import 'SetAvailbility.dart';
import 'SetAvailbilityService.dart';

class SetAvailbilityManager {

  final BehaviorSubject<List<SetAvailbility>> _product = BehaviorSubject<List<SetAvailbility>>();

  Stream<List<SetAvailbility>> get productList async* {

    yield await SetAvailbilityService.browse();
  }

  SetAvailbilityManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));

  }

}