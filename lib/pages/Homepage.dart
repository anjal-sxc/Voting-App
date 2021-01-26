import 'package:flutter/material.dart';
import 'package:votingapp/pages/Position_Voting.dart';
import 'Agenda_Voting.dart';
import 'package:flutter/animation.dart';

class VotingHomePageApp extends StatefulWidget {
  @override
  _VotingHomePageAppState createState() => _VotingHomePageAppState();
}

class _VotingHomePageAppState extends State<VotingHomePageApp>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
  }

  Widget home_page_buttons(String text) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * double.infinity,
      child: FlatButton.icon(
        icon: Icon(
          Icons.analytics_outlined,
          color: Colors.white,
        ),
        label: Text(
          '$text',
          style:
              TextStyle(fontSize: 14.0, color: Colors.white, letterSpacing: 6),
        ),
        splashColor: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        onPressed: () {
          if (text == 'AGENDA VOTING') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AgendaVoting()));
          } else {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PositionVoting()));
          }
        },
        color: Colors.blue[500],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400].withOpacity(0.6),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(2, 5), // changes position of shadow
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.78,
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.09,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeTransition(
                  opacity: animation,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            height: 1.3,
                            fontSize: 36.0,
                            color: Colors.blue[500],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'TO VOTING APP',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black.withOpacity(0.5),
                            letterSpacing: 9.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FadeTransition(
                  opacity: animation,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.4),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Choose one to further proceed.',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        home_page_buttons("AGENDA VOTING"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        home_page_buttons("POSITION VOTING"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
