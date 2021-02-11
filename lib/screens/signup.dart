import 'package:FlightTicket_app/common/colors.dart';
import 'package:FlightTicket_app/components/raisedbutton.dart';
import 'package:FlightTicket_app/components/spacer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../common/strings.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 80.0, bottom: 20.0, left: 20.0, right: 20.0),
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
                        TextField(
                          keyboardType: TextInputType.name,
                          onChanged: (value) {
                            // name = value;
                          },
                          decoration: InputDecoration(
                              hintText: 'Name',
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                  color: CustomizedColors.emailtitle,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            // email = value;
                          },
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: CustomizedColors.emailtitle,
                                fontWeight: FontWeight.bold),

                            suffixIcon: InkWell(
                                child: Icon(
                              Icons.email,
                              color: CustomizedColors.titlepinkcolor,
                            )

                                // errorText: _wrongPassword ? _passwordText : null,

                                ),

                            // errorText: _wrongEmail ? _emailText : null,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (value) {
                            // password = value;
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: CustomizedColors.emailtitle,
                                fontWeight: FontWeight.bold),
                            suffixIcon: InkWell(
                                child: Icon(
                              Icons.remove_red_eye_rounded,
                              color: CustomizedColors.emailtitle,
                            )

                                // errorText: _wrongPassword ? _passwordText : null,

                                ),
                          ),
                        ),
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
                            // Navigator.pushNamed(context, id);
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
            ],
          ),
        ],
      ),
      // ),
    );
  }
}
