import 'dart:async';
// import 'package:cattle_app/appointments/Appointments.dart';
// import 'package:cattle_app/pitem/AppointmentsService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

import 'AppointmentsService.dart';
import 'Appointrments.dart';

class AppointmentsManager {

  final BehaviorSubject<List<Appointments>> _product = BehaviorSubject<List<Appointments>>();

  Stream<List<Appointments>> get productList async* {

    yield await AppointmentsService.browse();
  }

  AppointmentsManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));

  }

}