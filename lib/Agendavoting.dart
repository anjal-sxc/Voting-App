import 'package:votingapp/ResultPage.dart';

import 'ProfilePage.dart';
import 'package:flutter/material.dart';
import 'AgendaDescription.dart';
import 'ResultPage.dart';

class AgendaVoting extends StatefulWidget {
  @override
  _AgendaVotingState createState() => _AgendaVotingState();
}

class _AgendaVotingState extends State<AgendaVoting> {
  List<dynamic> agenda = [
    'Make Environment Green',
    'Save Water',
    'Stop Corruption',
    'Clean air',
    'Clean River',
    'Clean River',
    'Clean River',
  ];
  // agendaVotingCard(String textPosition) {
  //   return Card(
  //     margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
  //     clipBehavior: Clip.antiAlias,
  //     elevation: 1,
  //     child: InkWell(
  //       splashColor: Colors.blue,
  //       onTap: () {},
  //       child: ListTile(
  //         leading: Icon(
  //           Icons.how_to_vote_outlined,
  //           color: Colors.blue[400],
  //         ),
  //         title: Text(
  //           '$textPosition',
  //           style: TextStyle(color: Colors.black.withOpacity(0.6)),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.78,
            // color: Colors.yellow,
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.1,
            ),
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Agenda Voting',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22.0,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.12),
                    RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      label: Text(
                        'Results',
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: Icon(
                        Icons.analytics_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultPage()));
                      },
                      color: Colors.blue,
                      splashColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Scroll for more positions',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.3),
                    fontSize: 14.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Container(
                  height: 380,
                  child: Scrollbar(
                    // isAlwaysShown: true,
                    child: SingleChildScrollView(
                      child: Column(
                          children: List.generate(agenda.length, (index) {
                        return Card(
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          clipBehavior: Clip.antiAlias,
                          elevation: 1,
                          child: InkWell(
                            splashColor: Colors.blue,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AgendaDescription()));
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.how_to_vote_outlined,
                                color: Colors.blue[400],
                              ),
                              title: Text(
                                '${agenda[index]}',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                          ),
                        );
                      })),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      label: Text(
                        'Back',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      label: Text(
                        'Profile',
                        style: TextStyle(color: Colors.blue),
                      ),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                      icon: Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        // bottomNavigationBar: BottomAppBar(
        //   elevation: 20,
        //   child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: <Widget>[
        //         IconButton(
        //           onPressed: () {
        //             Navigator.pop(context);
        //           },
        //           icon: Icon(
        //             Icons.home,
        //             color: Colors.blue,
        //             size: 30,
        //           ),
        //         ),
        //         IconButton(
        //           icon: Icon(
        //             Icons.person,
        //             color: Colors.blue,
        //             size: 30,
        //           ),
        //         ),
        //       ]),
        // ),
      ),
    );
  }
}
