import 'package:cattle_app/Model/MoreProjectModel.dart';
import 'package:flutter/material.dart';

class GuestMore extends StatefulWidget {
  @override
  _GuestMoreState createState() => _GuestMoreState();
}

class _GuestMoreState extends State<GuestMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff22AE4B),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Projects',
          style: TextStyle(
              letterSpacing: 1, fontFamily: 'sans', color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: dummyProjectModel.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (Context) => Modules()));
                },
                child: projectContainer(
                    textTitle: dummyProjectModel[index].txtTitle,
                    textSubtitle: dummyProjectModel[index].txtSubTitle,
                    detailText: dummyProjectModel[index].txtDetail,
                    impPath: dummyProjectModel[index].imagePath));
          }),
    );
  }

  Widget projectContainer(
      {String textTitle,
      String textSubtitle,
      String detailText,
      String impPath}) {
    return Padding(
      padding: EdgeInsets.only(left: 5, top: 5),
      child: Container(

        child: Card(

          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
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
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    textTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontFamily: 'sans',
                      color: Color(0xff22AE4B),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    textSubtitle,
                    style: TextStyle(color: Colors.grey, letterSpacing: 1, fontFamily: 'sans'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(detailText, style: TextStyle(
                      fontFamily: 'sans'

                    ),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
