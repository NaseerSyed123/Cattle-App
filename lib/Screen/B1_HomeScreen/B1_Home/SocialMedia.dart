
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/Drawer.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/GuestInfo.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/GuestScreen.dart';
import 'package:cattle_app/Screen/BottomNavigationBar/BottomTabbed.dart';
import 'package:flutter/material.dart';





class SocialMedia extends StatefulWidget {
  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  int country = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50].withOpacity(0.4),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 15,
            color: Colors.white,
            child: Container(
                height: 250,
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: Color(0xff22AE4B),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BottomTabbed()));
                            }
                            ),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Cattle App',
                          style: TextStyle(
                              color: Color(0xff22AE4B),
                            fontFamily: 'sans',
                            fontSize: 20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold
                          ),

                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                   Text('Login with',
                   textAlign: TextAlign.center,
                     style: TextStyle(
                       fontFamily: 'sans',
                       letterSpacing: 1,
                       fontSize: 18

                     ),
                   ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image(
                            width: 70,
                            height: 70,
                            image: AssetImage('assets/cattle/facebook.png')),
                        Image(
                            width: 70,
                            height: 70,
                            image: AssetImage('assets/cattle/tweeter.png')),
                        Image(
                            width: 70,
                            height: 70,
                            image: AssetImage('assets/cattle/gmail.png')),
                      ],
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
