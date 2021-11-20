import 'dart:async';

import 'package:cattle_app/getAppointmentHistory/GetAppointmentHistory.dart';
import 'package:cattle_app/getAppointmentHistory/GetAppointmentHistory.dart';
import 'package:cattle_app/getAppointmentHistory/GetAppointmentHistory.dart';
import 'package:cattle_app/getAppointmentHistory/GetAppointmentHistory.dart';
import 'package:cattle_app/getAppointmentHistory/GetAppointmentHistory.dart';
import 'package:cattle_app/getAppointmentHistory/GetAppointmentHistory.dart';
import 'package:cattle_app/getAppointmentHistory/GetAppointmentHistory.dart';

// import 'package:cattle_app/pitem/GetAppointmentHistoryService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

import 'GetAppointmentHistoryService.dart';

class GetAppointmentHistoryManager {

  final BehaviorSubject<List<GetAppointmentHistory>> _product = BehaviorSubject<List<GetAppointmentHistory>>();

  Stream<List<GetAppointmentHistory>> get productList async* {

    yield await GetAppointmentHistoryService.browse();
  }

  GetAppointmentHistoryManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));

  }

}