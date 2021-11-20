
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/Profile.dart';
import 'package:flutter/material.dart';

import 'ContactUsForm.dart';
import 'SocialMedia.dart';


class DrawerLayout extends StatefulWidget {
  @override
  _DrawerLayoutState createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
          color: Color(0xff22AE4B),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 10, top: 50, right: 10, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                50,
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
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'John Peterson',
                        style: TextStyle(
                            color: Colors.white,

                            letterSpacing: 1.0,
                            fontSize: 17,
                            fontFamily: 'sans',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: ListTile(
                      title: Text(
                        'Profile',
                        style: TextStyle(
                            letterSpacing: 1,
                            color: Color(0xff22AE4B),
                            fontFamily: 'sans',
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.person,
                        color: Color(0xff22AE4B),
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'FAQs',
                      style: TextStyle(
                          letterSpacing: 1,
                          color: Color(0xff22AE4B),
                          fontFamily: 'sans',
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.feedback,
                      color: Color(0xff22AE4B),
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactUsForm()));
                    },
                    child: ListTile(
                      title: Text(
                        'Contact Us',
                        style: TextStyle(
                            letterSpacing: 1,
                            color: Color(0xff22AE4B),
                            fontFamily: 'sans',
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.phone,
                        color: Color(0xff22AE4B),
                      ),
                    ),
                  ),
                  Divider(),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
