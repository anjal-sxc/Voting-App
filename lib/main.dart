import 'package:flutter/material.dart';
import 'pages/Login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        body: VotingAppLogin(),
      ),
    ),
  ));
}
