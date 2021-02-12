import 'package:FlightTicket_app/common/colors.dart';
import 'package:FlightTicket_app/common/patterns.dart';
import 'package:FlightTicket_app/components/emailfield.dart';
import 'package:FlightTicket_app/components/passwordfield.dart';
import 'package:FlightTicket_app/components/raisedbutton.dart';
import 'package:FlightTicket_app/components/spacer.dart';
import 'package:FlightTicket_app/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common/strings.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // ignore: unused_field
  String _username, _email, _password = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child:Opacity(opacity: 0.5,child: Image.network("https://cdn.pixabay.com/photo/2013/07/12/12/54/world-map-146505__340.png",height: 200,width: 400,),) ),
              Padding(
                padding: EdgeInsets.only(
                    top: 80.0, bottom: 20.0, left: 20.0, right: 20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Create',
                            style: GoogleFonts.spartan(
                                color: CustomizedColors.createaccounttitlecolor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'an account',
                            style: GoogleFonts.spartan(
                                color: CustomizedColors.createaccounttitlecolor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SpaceClass(),
                      Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.name,
                            validator: (name) {
                              Pattern pattern =
                              Patterns.username_pattern;
                              RegExp regex = new RegExp(pattern);
                              if (!regex.hasMatch(name))
                                return 'Invalid username';
                              else
                                return null;
                            },
                            onSaved: (name) => _username = name,
                      
                            onChanged: (value) {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                              }
                            },
                            decoration: InputDecoration(
                                hintText: 'Name',
                                labelText: 'Name',
                                labelStyle: TextStyle(
                                    color: CustomizedColors.emailtitle,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: 10.0),
                          Email(),
                     
                          SizedBox(height: 10.0),
                          Password(),
                        
                          SizedBox(height: 10.0),
                        ],
                      ),
                      SpaceClass(),
                      SpaceClass(),
                      RaisedButtons(
                        onPressed: () {},
                        text: Titles.signupButtonTiltle,
                      ),
                      SpaceClass(),
                      SpaceClass(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: CustomizedColors.emailtitle,
                                fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                               Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
                            },
                            child: Text(
                              ' Sign In',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: CustomizedColors.titlepinkcolor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SpaceClass(),
                      Container(
                        padding: EdgeInsets.only(
                            top: 0.0, bottom: 40.0, left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Skip for Now',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: CustomizedColors.emailtitle,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      // ),
    );
  }
}


