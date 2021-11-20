import 'package:flutter/material.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/GuestScreen.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/Calender/dynamic_event.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/Calender/splash.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/appointment.dart';
import 'package:cattle_app/AppLayer/Overseer.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  // bool isPatient = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff22AE4B),
        centerTitle: true,
        elevation: 0,
        title: Column(
          children: [
            Text(
              'Cattle Number',
              style: TextStyle(color: Colors.white, fontFamily: 'sans'),
            ),
            Text(
              'John Peterson',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'sans', fontSize: 16),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => (GuestScreen())));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          Card(

            elevation: 0.8,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => (Appointment())));
                    },
                    // child: customButton(txt: 'Live Streaming')
                    child: Text('Live Stream',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xffD23C3D),
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'sans',
                      fontSize: 17
                    ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                color: Colors.black,
                child: Center(
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              )),
          Card(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xff22AE4B),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Temperature',
                        style: TextStyle(
                            color: Color(0xff22AE4B),
                            fontFamily: 'sans',
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Shed\nTemperature',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF121940),
                                fontFamily: 'sans',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Color(0xff22AE4B),
                                borderRadius:
                                    BorderRadius.circular(90)),
                            child: Center(
                              child: Text(
                                '35°',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'sans',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Out\nTemperature',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF121940),
                                fontFamily: 'sans',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Color(0xff22AE4B),
                                borderRadius:
                                    BorderRadius.circular(40)),
                            child: Center(
                              child: Text(
                                '39°',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'sans',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Average\nTemperature',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF121940),
                                fontFamily: 'sans',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Color(0xff22AE4B),
                                borderRadius:
                                    BorderRadius.circular(40)),
                            child: Center(
                              child: Text(
                                '38°',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'sans',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[100]),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last Login By Admin',
                            style: TextStyle(
                              fontFamily: 'sans',
                              color: Color(0xFF121940),
                            ),
                          ),
                          Text(
                            '15 Aug 2021',
                            style: TextStyle(
                                fontFamily: 'sans',
                                color: Colors.green),
                          ),
                        ],
                      )

                      //
                      ),
                  SizedBox(
                    height: 10,
                  ),
                  customButton(txt: 'Achnoledge of satisfaction'),
                  SizedBox(
                    height: 10,
                  ),
                  customButton(txt: 'Report to Admin'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget profileContainer(
      {String titleText, String subTitleText, IconData icon}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Color(0xFF121940),
      ),
      title: Text(
        titleText,
        style: TextStyle(
          color: Color(0xFF121940),
        ),
      ),
      subtitle: Text(
        subTitleText,
        style: TextStyle(
          color: Color(0xFF121940),
        ),
      ),
    );
  }

  Widget customButton({String txt}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Color(0xffD23C3D),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Text(
        txt,
        style: TextStyle(color: Colors.white, fontFamily: 'sans'),
      ),
      alignment: Alignment.center,
    );
  }
}
