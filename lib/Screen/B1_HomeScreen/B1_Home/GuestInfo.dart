import 'package:cattle_app/Screen/OpeningApps/LoginOrSignup/Login.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';

class GuestInfo extends StatefulWidget {
  @override
  _GuestInfoState createState() => _GuestInfoState();
}

class _GuestInfoState extends State<GuestInfo> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: DrawerLayout(),
      ),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff22AE4B),
        title: Column(
          children: [
            Text(
              'Cattle App',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Comfortaa',
                letterSpacing: 1,
                color: Colors.white,
              ),
            ),
            Text(
              'Cattle App',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'sans',
                letterSpacing: 1,
                color: Colors.white,
              ),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState.openDrawer();
          },
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'sans'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Company Info',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Comfortaa',
                letterSpacing: 1,
                color: Color(0xff22AE4B),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(5),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                      letterSpacing: 1, color: Colors.grey, height: 1.3, fontFamily: 'Comfortaa'),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, bottom: 20),
              child: Text(
                'Follow us: ',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'sans',
                  letterSpacing: 1,
                  color: Color(0xff22AE4B),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                    width: 40,
                    height: 40,
                    image: AssetImage('assets/cattle/facebook.png')),
                Image(
                    width: 40,
                    height: 40,
                    image: AssetImage('assets/cattle/tweeter.png')),
                Image(
                    width: 40,
                    height: 40,
                    image: AssetImage('assets/cattle/gmail.png')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
