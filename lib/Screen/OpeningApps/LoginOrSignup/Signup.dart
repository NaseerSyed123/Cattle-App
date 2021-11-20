import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:cattle_app/AppLayer/Overseer.dart';
import 'package:cattle_app/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:cattle_app/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
import 'LoginAnimation.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 130,
          ),
          Text(
            'Sign Up',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff22AE4B),
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontFamily: 'sans',
                fontSize: 25),
          ),
          SizedBox(
            height: 30,
          ),
          textFromField(
            icon: Icons.person,
            password: false,
            email: 'Name',
            inputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 10,
          ),
          textFromField(
            icon: Icons.email,
            password: false,
            email: 'Email',
            inputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 10,
          ),
          textFromField(
            icon: Icons.vpn_key,
            password: true,
            email: 'Password',
            inputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 10,
          ),
          textFromField(
            icon: Icons.phone,
            password: false,
            email: 'Phone',
            inputType: TextInputType.phone,
          ),
          SizedBox(
            height: 10,
          ),
          textFromField(
            icon: Icons.add_location,
            password: false,
            email: 'Address',
            inputType: TextInputType.streetAddress,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),

          Container(
              padding: EdgeInsets.only(right: 35),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                          fontFamily: 'sans',
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Login',
                            style: TextStyle(
                                fontFamily: 'sans',
                                fontWeight: FontWeight.bold,
                                color: Color(0xffD23C3D)),
                          )
                        ]),
                  ),
                ),
              )),
          SizedBox(
            height: 30,
          ),
          buttonBlack()
        ],
      ),
    );
  }
}



/// textfromfield custom class
class textFromField extends StatelessWidget {
  bool password;
  String email;
  IconData icon;
  TextInputType inputType;

  textFromField({this.email, this.icon, this.inputType, this.password});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 45.0,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(color: Color(0xff22AE4B),)
          // boxShadow: [BoxShadow(blurRadius: 10.0, color: Colors.black12)]
        ),
        padding:
        EdgeInsets.only(left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
        child: Theme(
          data: ThemeData(
            hintColor: Colors.transparent,
          ),
          child: TextFormField(
            cursorColor: Color(0xff22AE4B),
            obscureText: password,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: email,
                icon: Icon(
                  icon,
                  color: Color(0xff22AE4B),
                ),
                hintStyle: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Sans',
                    letterSpacing: 0.3,
                    color: Color(0xff22AE4B),
                    fontWeight: FontWeight.w600)),
            keyboardType: inputType,
          ),
        ),
      ),
    );
  }
}
class buttonBlack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Container(
          height: 55.0,
          width: 600.0,
          child: Text(
            AppLocalizations.of(context).tr('Sign up'),
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 0.2,
                fontFamily: "Sans",
                fontSize: 18.0,
                fontWeight: FontWeight.w800),
          ),
          alignment: FractionalOffset.center,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 15.0)],
              borderRadius: BorderRadius.circular(30.0),
            color: Color(0xff22AE4B),),
                      ),
      ),
    );
  }
}
