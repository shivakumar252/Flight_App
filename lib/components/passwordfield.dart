import 'package:FlightTicket_app/common/colors.dart';
import 'package:FlightTicket_app/common/patterns.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  String  _password = "";
  final _formKey = GlobalKey<FormState>();

  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: 
    TextFormField(
      obscureText: _isHidden,
      keyboardType: TextInputType.visiblePassword,
      validator: (password) {
        Pattern pattern = Patterns.password_pattern;
        RegExp regex = new RegExp(pattern);
        try{
        if (!regex.hasMatch(password))
          return 'Invalid password';
        else
          return null;
        }catch(exception){
        throw(exception);
        }
        
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
            color: CustomizedColors.emailtitle, fontWeight: FontWeight.bold),
        suffixIcon: InkWell(
            onTap: () {
              _togglePasswordView();
            },
            child: Icon(
              _isHidden ? Icons.visibility : Icons.visibility_off,
              color: CustomizedColors.emailtitle,
            )

            // errorText: _wrongPassword ? _passwordText : null,

            ),
      ),
    )
    );
  }
}
