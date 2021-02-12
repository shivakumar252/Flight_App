import 'package:FlightTicket_app/blocs/bloc.dart';
import 'package:FlightTicket_app/common/colors.dart';
import 'package:flutter/material.dart';

Widget passwordField(Bloc bloc) {
  return StreamBuilder(
    stream: bloc.password,
    builder: (context, snapshot) {
      return TextField(
        onChanged: bloc.changePassword,
        decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: InkWell(
              child: Icon(
            Icons.remove_red_eye_rounded,
            color: CustomizedColors.emailtitle,
          )

              

              ),
          errorText: snapshot.error,
        ),
      );
    },
  );
}
