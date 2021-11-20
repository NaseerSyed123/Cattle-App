import 'dart:async';

import 'package:cattle_app/login/Login.dart';
import 'package:cattle_app/login/LoginService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

class LoginManager {

  final BehaviorSubject<List<Login>> _product = BehaviorSubject<List<Login>>();

  Stream<List<Login>> get productList async* {

    yield await LoginService.browse();
  }

  LoginManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));

  }

}