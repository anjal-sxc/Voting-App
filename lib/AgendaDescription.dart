import 'package:flutter/material.dart';

class AgendaDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('New Container',
              style: TextStyle(
                decoration: TextDecoration.none,
              )),
        ],
      ),
      color: Colors.white,
    );
  }
}
