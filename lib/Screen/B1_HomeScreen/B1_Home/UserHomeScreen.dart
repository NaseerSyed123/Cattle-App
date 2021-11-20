import 'package:cattle_app/Model/UserModel.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/BarChartScreen.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/Patient/UserScreen.dart';
import 'package:cattle_app/Screen/OpeningApps/LoginOrSignup/Login.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';

class UserHomeScreen extends StatefulWidget {
  @override
  _UserHomeScreenState createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff22AE4B),
        title: Column(
          children: [
            Text(
              'Sheds',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'sans',
                letterSpacing: 1,
                color: Colors.white,
              ),
            ),
            Text(
              'John Peterson',
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right:10.0),
        //     child: Column(
        //
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         InkWell(
        //           onTap: (){
        //             Navigator.push(context,
        //                 MaterialPageRoute(builder: (context) => LoginScreen()));
        //           },
        //           child: Text('Login',
        //             style: TextStyle(
        //                 color: Colors.white,
        //                 letterSpacing: 1,
        //                 fontWeight: FontWeight.bold,
        //                 fontFamily: 'sans'
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //
        // ],
      ),
      body: ListView.builder(
          itemCount: dummyUserModel.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => UserScreen()));
                },
                child: projectContainer(
                    catText: dummyUserModel[index].catTxt,
                    literText: dummyUserModel[index].literTxt,
                    loginText: dummyUserModel[index].loginTxt,
                    priceText: dummyUserModel[index].priceTxt,
                    impPath: dummyUserModel[index].imagePath));
          }),
    );
  }

  Widget projectContainer(
      {String impPath,
      String catText,
      String loginText,
      String literText,
      String priceText}) {
    return Padding(
      padding: EdgeInsets.only(left: 5, top: 5),
      child: Container(
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xff22AE4B)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 2),
                          child: Row(
                            children: [
                              Text(
                                'Cat #  ',
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1,
                                    fontFamily: 'sans'),
                              ),
                              Text(
                                catText,
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1,
                                    fontFamily: 'sans',
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ))),
                // SizedBox(
                //   height: 10,
                // ),
                Container(

                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image(
                      height: 100,
                      fit: BoxFit.cover,
                      image: AssetImage(impPath),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      BarChartScreen(),
                      // SizedBox(
                      //   width: 30,
                      // ),
                      // Text(
                      //   literText,
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold, letterSpacing: 1),
                      // ),
                    ],
                  ),
                ),


                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                     BarChartScreen(),
                      // SizedBox(
                      //   width: 30,
                      // ),
                      // Text(
                      //   priceText,
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold, letterSpacing: 1),
                      // ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Vaccinated : ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Date of vaccine : ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Yes  ',
                          style: TextStyle(
                              letterSpacing: 1
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('12 Jun 2021  ',
                          style: TextStyle(
                              letterSpacing: 1
                          ),
                        ),
                      ],
                    )

                  ],
                )
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        'Last Login : ',
                        style: TextStyle(
                          color: Color(0xff22AE4B),
                            letterSpacing: 1,
                            fontFamily: 'sans',

                        ),
                      ),
                      Text(
                        loginText,
                        style: TextStyle(
                            color: Color(0xff22AE4B),
                            letterSpacing: 1,
                            fontFamily: 'sans',
                            fontWeight: FontWeight.bold),
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
