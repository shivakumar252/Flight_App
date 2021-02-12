import 'package:FlightTicket_app/common/colors.dart';
import 'package:FlightTicket_app/common/strings.dart';
import 'package:FlightTicket_app/components/emailfield.dart';
import 'package:FlightTicket_app/components/passwordfield.dart';
import 'package:FlightTicket_app/components/raisedbutton.dart';
import 'package:FlightTicket_app/components/spacer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Titles.loginTitle,
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
                          
                          Email(),
                     
                          SizedBox(height: 10.0),
                          Password(),
                           SpaceClass(),
                              Row(
                                children: [
                                  GestureDetector(
                            onTap: () {
                                   Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
                            },
                            child: Text(
                                  Titles.forgotPassword,textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: CustomizedColors.titlepinkcolor,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                                ],
                              ),
                        
                          SizedBox(height: 10.0),
                        ],
                      ),
                      // SpaceClass(),
                      SpaceClass(),
                      RaisedButtons(
                        onPressed: () {},
                        text: Titles.loginTitle,
                      ),
                      SpaceClass(),
                      // SpaceClass(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Titles.noAccount,
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
                              Titles.signupSubTitle,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: CustomizedColors.titlepinkcolor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      // SpaceClass(),
                
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
        
      ),
      // )
       floatingActionButton: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.fromLTRB(80, 15, 25, 35),
        child:Text(Titles.loginWith,style: TextStyle(fontSize: 20.0,color:CustomizedColors.createaccounttitlecolor,fontWeight: FontWeight.bold),)
      ),
      
      FloatingActionButton(
        child: Image.network(ImageList.fbImage),
        onPressed: () {
          //...
        },
        heroTag: null,
      ),
      SizedBox(
        width: 20,
      ),
      FloatingActionButton(           
        child: Image.network(ImageList.googleImage),
        onPressed: () {

        },
        backgroundColor: Colors.white,
        heroTag: null,
      )
    ]
  ),
    );
  }
}
