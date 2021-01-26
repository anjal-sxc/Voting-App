import 'package:flutter/material.dart';
import 'package:votingapp/pages/Profile.dart';

Widget back_button(context) {
  return RaisedButton.icon(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    label: Text(
      'Back',
      style: TextStyle(color: Colors.blue),
    ),
    color: Colors.white,
    onPressed: () {
      Navigator.pop(context);
    },
    icon: Icon(
      Icons.arrow_back,
      color: Colors.blue,
    ),
  );
}

Widget profile_button(context) {
  return RaisedButton.icon(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    label: Text(
      'Profile',
      style: TextStyle(color: Colors.white),
    ),
    color: Colors.blue,
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ProfilePage()));
    },
    icon: Icon(
      Icons.person,
      color: Colors.white,
    ),
  );
}
