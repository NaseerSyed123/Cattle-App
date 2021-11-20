import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/GuestScreen.dart';
import 'package:cattle_app/Screen/BottomNavigationBar/BottomTabbed.dart';
import 'package:cattle_app/Screen/OpeningApps/LoginOrSignup/ChoseLoginOrSignup.dart';
import 'package:cattle_app/Screen/OpeningApps/LoginOrSignup/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cattle_app/Library/intro_views_flutter-2.4.0/lib/Models/page_view_model.dart';
import 'package:cattle_app/Library/intro_views_flutter-2.4.0/lib/intro_views_flutter.dart';
import 'package:cattle_app/Screen/OpeningApps/LoginOrLoginScreen/ChoseLoginOrLoginScreen.dart';

class onBoarding extends StatefulWidget {
  @override
  _onBoardingState createState() => _onBoardingState();
}

var _fontHeaderStyle = TextStyle(
    fontFamily: "sans",
    fontSize: 21.0,
    fontWeight: FontWeight.w800,
    color:Color(0xff22AE4B),
    letterSpacing: 1.5);

var _fontDescriptionStyle = TextStyle(
    fontFamily: "Sans",
    fontSize: 15.0,
    color: Colors.grey,
    fontWeight: FontWeight.w400);

///
/// Page View Model for on boarding
///
final pages = [
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Color(0xff22AE4B),
      bubbleBackgroundColor: Color(0xff22AE4B),
      title: Text(
        'My Cattle App',
        style: _fontHeaderStyle,
      ),
      body: Container(

        height: 250.0,
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
            textAlign: TextAlign.left,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/cattle/cattle1.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Color(0xff22AE4B),
      bubbleBackgroundColor: Color(0xff22AE4B),
      title: Text(
        'Shed',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            textAlign: TextAlign.left,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/cattle/cattle2.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Color(0xff22AE4B),
      bubbleBackgroundColor: Color(0xff22AE4B),
      title: Text(
        'My Cattle App',
        style: _fontHeaderStyle
      ),
      body: Container(
        height: 250.0,
        child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            textAlign: TextAlign.left,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/cattle/cattle3.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
];

class _onBoardingState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Color(0xff22AE4B),
      skipText: Text(
        "SKIP",
        style: _fontDescriptionStyle.copyWith(
            color: Color(0xff22AE4B),
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      doneText: Text(
        "DONE",
        style: _fontDescriptionStyle.copyWith(
            color: Color(0xff22AE4B),
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      onTapDoneButton: () async {
        SharedPreferences prefs;
        prefs = await SharedPreferences.getInstance();
        prefs.setString("username", "Login");
        Navigator.of(context).pushReplacement(PageRouteBuilder(
          pageBuilder: (_, __, ___) => new BottomTabbed(),
          transitionsBuilder:
              (_, Animation<double> animation, __, Widget widget) {
            return Opacity(
              opacity: animation.value,
              child: widget,
            );
          },
          transitionDuration: Duration(milliseconds: 1500),
        ));
      },
    );
  }
}
