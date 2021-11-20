import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/GuestInfo.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff22AE4B),
        centerTitle: true,
        title: Text('Profile',
        style: TextStyle(color: Colors.white,
        fontFamily: 'sans',
        letterSpacing: 1
        ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => GuestInfo()));
          },
          icon: Icon(
            Icons.arrow_back_ios, color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50, right: 10, left: 10),
        child: ListView(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(3),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff22AE4B), width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        80,
                      ),
                    )),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),

                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/cattle/profile.png'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text(
                      'Name :  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 17),
                    ),
                  ),
                  Text(
                    'John Peterson',
                    style: TextStyle(letterSpacing: 1, fontSize: 17),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text(
                      'Email :  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 17),
                    ),
                  ),
                  Text(
                    'john101@gmail.com',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text(
                      'Gendar :  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 17),
                    ),
                  ),
                  Text(
                    'Male',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text(
                      'DOB :  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 17),
                    ),
                  ),
                  Text(
                    '12-3-2000',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text(
                      'Phone :  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 17),
                    ),
                  ),
                  Text(
                    '+1238867654',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text(
                      'Address :  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 17),
                    ),
                  ),
                  Text(
                    '502 Main St, KS 67878, USA',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
