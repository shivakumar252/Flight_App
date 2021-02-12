import 'package:FlightTicket_app/common/colors.dart';
import 'package:FlightTicket_app/common/patterns.dart';
import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  @override

  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
        child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (email) {
        Pattern pattern = Patterns.email_pattern;
        RegExp regex = new RegExp(pattern);
        try{
        if (!regex.hasMatch(email))
          return 'Invalid Email';
        else
          return null;
        }catch(exception){
         throw(exception);
        }
        
      },
      onSaved: (email) => _email = email,
      onChanged: (value) {
        // print(_formKey.currentState.validate());
        if (_formKey.currentState.validate()) {
          _formKey.currentState.save();
        }
      },
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(
            color: CustomizedColors.emailtitle, fontWeight: FontWeight.bold),

        suffixIcon: InkWell(
            child: Icon(
          Icons.email,
          color: CustomizedColors.titlepinkcolor,
        )

            // errorText: _wrongPassword ? _passwordText : null,

            ),

        // errorText: _wrongEmail ? _emailText : null,
      ),
    ));
  }
}
