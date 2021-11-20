import 'package:flutter/material.dart';

class GuestTerms extends StatefulWidget {
  @override
  _GuestTermsState createState() => _GuestTermsState();
}

class _GuestTermsState extends State<GuestTerms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Terms',
        style: TextStyle(
          fontFamily: 'sans',
          color: Colors.white,
          letterSpacing: 1
        ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff22AE4B),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          style: TextStyle(letterSpacing: 1, color: Colors.grey, height: 1.3),
        ),
      ),

    );
  }
}
