import 'dart:async';
import 'package:cattle_app/pitem/Pitem.dart';
import 'package:cattle_app/pitem/PitemService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

class PitemManager {

  final BehaviorSubject<List<Pitem>> _product = BehaviorSubject<List<Pitem>>();

  Stream<List<Pitem>> get productList async* {

    yield await PitemService.browse();
  }

  PitemManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));

  }

}