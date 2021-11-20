import 'dart:async';
// import 'package:cattle_app/pitem/HistoryAppointment.dart';
 import 'package:cattle_app/historyAppointment/HistoryAppointmentService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';
import 'package:cattle_app/historyAppointment/HistoryAppointment.dart';

class HistoryAppointmentManager {

  final BehaviorSubject<List<HistoryAppointment>> _product = BehaviorSubject<List<HistoryAppointment>>();

  Stream<List<HistoryAppointment>> get productList async* {

    yield await HistoryAppointmentService.browse();
  }

  HistoryAppointmentManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));

  }

}