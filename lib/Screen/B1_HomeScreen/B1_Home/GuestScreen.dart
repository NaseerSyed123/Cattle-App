import 'package:cattle_app/Screen/OpeningApps/LoginOrLoginScreen/ChoseLoginOrLoginScreen.dart';
import 'package:cattle_app/Screen/OpeningApps/LoginOrSignup/Login.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/Drawer.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/Patient/UserScreen.dart';
import 'package:cattle_app/Model/ShedModelList.dart';

class GuestScreen extends StatefulWidget {
  @override
  _GuestScreenState createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
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
        backgroundColor: Color(0xFF121940),
        title: Text(
          'Cattle Sheds',
          style: TextStyle(color: Colors.white, fontFamily: 'sans'),
        ),
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState.openDrawer();
          },
          icon: Icon(Icons.menu, color: Colors.white,),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.group,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              })
        ],
      ),
      body: Column(
        children: [
          Card(
            elevation: 0.8,
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: textFieldContainer(txt: 'Search Shed'),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // Container(
                  //   height: 30,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: [
                  //       filterContainer(filterTxt: 'Discount'),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       filterContainer(filterTxt: 'Near me'),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       filterContainer(filterTxt: 'Video consult'),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       filterContainer(filterTxt: 'Availability'),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       filterContainer(filterTxt: 'Gender'),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       filterContainer(filterTxt: 'online now'),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: dummyShedModel.length,
                  itemBuilder: (context, index) {
                    return cattleList(
                        nameTxt: dummyShedModel[index].nameText,
                        imgPath: dummyShedModel[index].imagePath,
                        tagTxt: dummyShedModel[index].tagText,
                        camTxt: dummyShedModel[index].camText,
                        shedTxt: dummyShedModel[index].shedText,
                        outTxt: dummyShedModel[index].outText,
                        viewTxt: dummyShedModel[index].viewText);
                  })),
        ],
      ),
    );
  }

  Widget cattleList(
      {String nameTxt,
      String imgPath,
      String tagTxt,
      String camTxt,
      String shedTxt,
      String outTxt,
      String viewTxt}) {
    return Card(
      elevation: 0.5,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                width: 60,
                                height: 60,
                                image: AssetImage(imgPath),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: 39,
                              child: Container(
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                    color: Color(0xFF121940),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                child: Icon(
                                  Icons.video_call,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nameTxt,
                              style: TextStyle(
                                  color: Color(0xFF121940),
                                  fontFamily: 'sans',
                                  fontSize: 18,
                                  letterSpacing: 1),
                            ),
                            Text(
                              tagTxt,
                              style: TextStyle(
                                  letterSpacing: 1,
                                  fontFamily: 'sans',
                                  color: Colors.grey),
                            ),
                            Text(
                              camTxt,
                              style: TextStyle(
                                  color: Colors.grey, fontFamily: 'sans'),
                            )
                          ],
                        )
                      ],
                    ),
                    // Container(
                    //   padding:
                    //       EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.all(Radius.circular(10)),
                    //     color: Color(0xFF121940),
                    //   ),
                    //   child: Text(
                    //     'Gold',
                    //     style: TextStyle(color: Colors.white),
                    //   ),
                    // )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Shed Temperature',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'sans'),
                        ),
                        Text(
                          shedTxt,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'sans',
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    VerticalDivider(
                      width: 3,
                    ),
                    Column(
                      children: [
                        Text(
                          'Out Temperature',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'sans'),
                        ),
                        Text(
                          outTxt,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'sans',
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    // VerticalDivider(
                    //   width: 3,
                    // ),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Text(
                    //       '100 %',
                    //       style: TextStyle(
                    //           fontSize: 12, fontWeight: FontWeight.bold),
                    //     ),
                    //     Text(
                    //       'Satisfied',
                    //       style: TextStyle(fontSize: 12, fontFamily: 'sans'),
                    //     )
                    //   ],
                    // ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 55,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last view by client',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'sans',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.green),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              viewTxt,
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12),
                            )
                          ],
                        ),
                        // Text(
                        //   'Rs. 1000',
                        //   style: TextStyle(fontWeight: FontWeight.bold),
                        // )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
// Container(
//   padding: EdgeInsets.symmetric(
//       horizontal: 5, vertical: 10),
//   decoration: BoxDecoration(
//     border: Border.all(
//         color: Colors.blue[800]),
//     borderRadius: BorderRadius.all(
//         Radius.circular(5)),
//   ),
//   child: Row(
//     children: [
//       Icon(
//         Icons.video_call_outlined,
//         color: Colors.blue[800],
//         size: 15,
//       ),
//       Text(
//         'Video consultant',
//         style: TextStyle(
//             color: Colors.blue[900]),
//       )
//     ],
//   ),
// ),

                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             (UserScreen())));
                      },
                      child: Container(
                          height: 45,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Text(
                            'Live Streaming',
                            style: TextStyle(
                                fontFamily: 'Sans', color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget filterContainer({String filterTxt}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF121940)),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Text(
        filterTxt,
        style: TextStyle(color: Color(0xFF121940)),
      ),
    );
  }

  Widget textFieldContainer({String txt}) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: Color(0xFF121940),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        hintText: txt,
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey[400],
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Colors.grey[400],
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Color(0xFF121940),
          ),
        ),
      ),
    );
  }
}
