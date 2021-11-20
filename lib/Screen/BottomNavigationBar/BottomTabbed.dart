import 'package:flutter/material.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/GuestInfo.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/GuestTerms.dart';
import 'package:cattle_app/Screen/B1_HomeScreen/B1_Home/GuestMore.dart';

class BottomTabbed extends StatefulWidget {
  @override
  _BottomTabbedState createState() => _BottomTabbedState();
}

class _BottomTabbedState extends State<BottomTabbed>
    with SingleTickerProviderStateMixin {
  TabController controller;
  int selectedItemIndex = 0;

  @override
  void initState() {
    super.initState();
    ///// DONE
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,

        bottomNavigationBar: Material(
            color: Color(0xff22AE4B),
            ///// DONE
            child: TabBar(
                labelColor: Colors.white,
                labelStyle: TextStyle(  color: Color(0xff22AE4B),),
                unselectedLabelColor: Colors.lightGreenAccent,
                indicatorColor: Colors.white,
                ///// DONE
                controller: controller,
                ///// DONE
                tabs: <Tab>[
                  Tab(

                    icon: new Icon(Icons.info),
                    text: "Info",

                  ),
                  Tab(
                    icon: new Icon(Icons.gavel),
                    text: "Terms",
                  ),
                  Tab(
                    icon: new Icon(Icons.more_horiz),
                    text: "More",
                  ),
                ])),
        ///// DONE
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            GuestInfo(),
            GuestTerms(),
            GuestMore(),
          ],
        ),
        ///// DONE
      ),
    );
  }
}