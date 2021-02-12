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
  String _username, _email, _password = "";
  final _formKey = GlobalKey<FormState>();
  FocusNode _usernameFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

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
                                  r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
                              RegExp regex = new RegExp(pattern);
                              if (!regex.hasMatch(name))
                                return 'Invalid username';
                              else
                                return null;
                            },
                            onSaved: (name) => _username = name,
                            onFieldSubmitted: (_) {
                              fieldFocusChange(
                                  context, _usernameFocusNode, _emailFocusNode);
                            },
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
                          TextFormField(
                            focusNode: _emailFocusNode,
                            keyboardType: TextInputType.emailAddress,
                            validator: (email) {
                              Pattern pattern =
                                  r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                                  r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                                  r"{0,253}[a-zA-Z0-9])?)*$";
                              RegExp regex = new RegExp(pattern);
                              if (!regex.hasMatch(email))
                                return 'Invalid Email';
                              else
                                return null;
                            },
                            onSaved: (email) => _email = email,
                            onFieldSubmitted: (_) {
                              fieldFocusChange(
                                  context, _emailFocusNode, _passwordFocusNode);
                            },
                            onChanged: (value) {
                              // print(_formKey.currentState.validate());
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                              }
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
                          TextFormField(
                            obscureText: _isHidden,
                            keyboardType: TextInputType.visiblePassword,
                            validator: (password) {
                              Pattern pattern =
                                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                              RegExp regex = new RegExp(pattern);
                              if (!regex.hasMatch(password))
                                return 'Invalid password';
                              else
                                return null;
                            },
                            onSaved: (password) => _password = password,
                            onChanged: (password) {
                              // password = value;
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: CustomizedColors.emailtitle,
                                  fontWeight: FontWeight.bold),
                              suffixIcon: InkWell(
                                  onTap: () {
                                    _togglePasswordView();
                                  },
                                  child: Icon(
                                    _isHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off,
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
              )
            ],
          ),
        ],
      ),
      // ),
    );
  }
}

void fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
