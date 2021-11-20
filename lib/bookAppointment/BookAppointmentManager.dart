import 'dart:async';
// import 'package:cattle_app/pitem/BookAppointment.dart';
// import 'package:cattle_app/pitem/BookAppointmentService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

import 'BookAppointment.dart';
import 'BookAppointmentService.dart';

class BookAppointmentManager {

  final BehaviorSubject<List<BookAppointment>> _product = BehaviorSubject<List<BookAppointment>>();

  Stream<List<BookAppointment>> get productList async* {

    yield await BookAppointmentService.browse();
  }

  BookAppointmentManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));

  }

}