import 'dart:async';
import 'package:cattle_app/profile/Profile.dart';
import 'package:cattle_app/profile/ProfileService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

import 'Profile.dart';

class ProfileManager {

  final BehaviorSubject<List<Profile>> _product = BehaviorSubject<List<Profile>>();

  Stream<List<Profile>> get productList async* {

    yield await ProfileService.browse();
  }

  ProfileManager() {
    print("-- printing from product manager");
    // productList.listen((value) => _product.addStream(productList));

  }

}