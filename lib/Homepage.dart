import 'package:flutter/material.dart';
import 'package:votingapp/PositionVoting.dart';
import 'Agendavoting.dart';
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Center(
          child: Container(
            // color: Colors.yellow,
            width: MediaQuery.of(context).size.width * 0.78,
            margin: EdgeInsets.only(
              // left: MediaQuery.of(context).size.width * 0.1,
              top: MediaQuery.of(context).size.height * 0.1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeTransition(
                  opacity: animation,
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.382),
                Container(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // margin: EdgeInsets.fromLTRB(52.0, 0.0, 0.0, 52.0),
                    children: <Widget>[
                      Text(
                        'Choose one to further proceed.',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black.withOpacity(0.5),
                          // letterSpacing: 10.0,
                        ),
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width:
                            MediaQuery.of(context).size.width * double.infinity,
                        child: FlatButton.icon(
                          icon: Icon(
                            Icons.analytics_outlined,
                            color: Colors.white,
                          ),
                          label: Text(
                            'AGENDA VOTING',
                            style: TextStyle(
                                // color: Colors.white,
                                fontSize: 14.0,
                                color: Colors.white,
                                letterSpacing: 6),
                          ),
                          splashColor: Colors.white,
                          // child: Image(
                          //     image: AssetImage('images/prixa_image.png')),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AgendaVoting()));
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
                              offset:
                                  Offset(2, 5), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      // ignore: missing_required_param
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width:
                            MediaQuery.of(context).size.width * double.infinity,
                        child: FlatButton.icon(
                          icon: Icon(Icons.analytics_outlined,
                              color: Colors.white),
                          label: Text('POSITION VOTING',
                              style: TextStyle(
                                  //
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  letterSpacing: 6)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          splashColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PositionVoting()));
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
                              offset:
                                  Offset(2, 5), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ],
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
