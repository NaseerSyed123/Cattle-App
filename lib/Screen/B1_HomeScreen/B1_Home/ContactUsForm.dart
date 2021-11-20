import 'package:cattle_app/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:cattle_app/Screen/BottomNavigationBar/BottomTabbed.dart';
import 'package:cattle_app/Screen/OpeningApps/LoginOrSignup/Login.dart';
import 'package:flutter/material.dart';

class ContactUsForm extends StatefulWidget {
  @override
  _ContactUsFormState createState() => _ContactUsFormState();
}

class _ContactUsFormState extends State<ContactUsForm> {
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
                height: 470,
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      builder: (context) => BottomTabbed()));
                            }),
                        Text(
                          'Contact us',
                          style: TextStyle(
                              color: Color(0xff22AE4B),
                              fontFamily: 'sans',
                              fontSize: 20,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 50,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    textFromField(
                      icon: Icons.person,
                      password: false,
                      email: 'Name',
                      inputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    textFromField(
                      icon: Icons.email,
                      password: false,
                      email: 'Email',
                      inputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    textAreaField(
                      password: false,
                      email: 'Message type here',
                      inputType: TextInputType.emailAddress,
                    ),

                    buttonSubmit()
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class textAreaField extends StatelessWidget {
  bool password;
  String email;

  TextInputType inputType;

  textAreaField({this.email, this.inputType, this.password});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 160.0,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(color: Color(0xff22AE4B))
            // boxShadow: [BoxShadow(blurRadius: 10.0, color: Colors.black12)]
            ),
        padding:
            EdgeInsets.only(left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
        child: Theme(
          data: ThemeData(
            hintColor: Colors.transparent,
          ),
          child: TextFormField(
            maxLines: 12,
            cursorColor: Color(0xff22AE4B),
            obscureText: password,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: email,
                hintStyle: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Sans',
                    letterSpacing: 0.3,
                    color: Color(0xff22AE4B),
                    fontWeight: FontWeight.w600)),
            keyboardType: inputType,
          ),
        ),
      ),
    );
  }
}
class buttonSubmit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Overseer.userRole = 'Patient';
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BottomTabbed()));
      },
      child: Padding(
        padding: EdgeInsets.only(top: 30.0, left: 30, right: 30, bottom: 10),
        child: Container(
          height: 55.0,
          width: 600.0,
          child: Text(
            AppLocalizations.of(context).tr('Submit'),
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 0.2,
                fontFamily: "Sans",
                fontSize: 18.0,
                fontWeight: FontWeight.w800),
          ),
          alignment: FractionalOffset.center,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 15.0)],
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xff22AE4B)
            // gradient: LinearGradient(
            //     colors: <Color>[Color(0xFF121940), Color(0xFF6E48AA)])
          ),
        ),
      ),
    );
  }
}
