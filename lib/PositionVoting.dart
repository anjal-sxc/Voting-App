import 'package:votingapp/ResultPage.dart';
import 'ProfilePage.dart';
import 'package:flutter/material.dart';
import 'ResultPage.dart';
import 'PositionDescription.dart';

class PositionVoting extends StatefulWidget {
  @override
  _PositionVotingState createState() => _PositionVotingState();
}

class _PositionVotingState extends State<PositionVoting> {
  List<dynamic> position = [
    'Ceo',
    'HR',
    'Secretary',
    'Programmer',
    'Analyst',
    'Clean River',
    'Clean River',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.78,
            // color: Colors.yellow,
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.08,
            ),
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Position Voting',
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
                  height: MediaQuery.of(context).size.height * 0.042,
                ),
                Text(
                  'Scroll for more positions',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.3),
                    fontSize: 14.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.006,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.57,
                  width: MediaQuery.of(context).size.width * 0.77,
                  child: Scrollbar(
                    // isAlwaysShown: true,
                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(position.length, (index) {
                            return Card(
                              margin: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.019,
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.002,
                              ),
                              clipBehavior: Clip.antiAlias,
                              elevation: 2,
                              shadowColor: Colors.black.withOpacity(0.5),
                              child: InkWell(
                                splashColor: Colors.blue,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PositionDescription()));
                                },
                                child: ListTile(
                                  leading: Icon(
                                    Icons.how_to_vote_outlined,
                                    color: Colors.blue[400],
                                  ),
                                  title: Text(
                                    '${position[index]}',
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
                  height: MediaQuery.of(context).size.height * 0.030,
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
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'AgendaDescription.dart';
// import 'ProfilePage.dart';
// import 'ResultPage.dart';
// import 'PositionDescription.dart';

// class PositionVoting extends StatefulWidget {
//   @override
//   _PositionVotingState createState() => _PositionVotingState();
// }

// class _PositionVotingState extends State<PositionVoting> {
//   List<dynamic> position = [
//     'CEO',
//     'HR MANAGER',
//     'DEVELOPER',
//     'CHEF',
//     'SECRETARY',
//     'asasa',
//     'asasa',
//     'asasa',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Container(
//             width: MediaQuery.of(context).size.width * 0.78,
//             margin: EdgeInsets.symmetric(
//               vertical: MediaQuery.of(context).size.height * 0.1,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Position Voting',
//                       style: TextStyle(
//                         color: Colors.blue,
//                         fontSize: 22.0,
//                       ),
//                     ),
//                     SizedBox(width: MediaQuery.of(context).size.width * 0.12),
//                     RaisedButton.icon(
//                       shape: RoundedRectangleBorder(
//                           borderRadius:
//                               BorderRadius.all(Radius.circular(20.0))),
//                       label: Text(
//                         'Results',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       icon: Icon(
//                         Icons.analytics_outlined,
//                         color: Colors.white,
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ResultPage()));
//                       },
//                       color: Colors.blue,
//                       splashColor: Colors.white,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.042,
//                 ),
//                 Text(
//                   'Scroll for more positions',
//                   style: TextStyle(
//                     color: Colors.black.withOpacity(0.3),
//                     fontSize: 14.0,
//                     fontStyle: FontStyle.italic,
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.006,
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.52,
//                   width: MediaQuery.of(context).size.width * 0.77,
//                   child: Scrollbar(
//                     child: SingleChildScrollView(
//                       child: Column(
//                           children: List.generate(position.length, (index) {
//                         return Card(
//                           margin: EdgeInsets.symmetric(
//                             vertical:
//                                 MediaQuery.of(context).size.height * 0.012,
//                             horizontal:
//                                 MediaQuery.of(context).size.width * 0.008,
//                           ),
//                           clipBehavior: Clip.antiAlias,
//                           elevation: 2,
//                           shadowColor: Colors.black.withOpacity(0.5),
//                           child: InkWell(
//                             splashColor: Colors.blue,
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           PositionDescription()));
//                             },
//                             child: ListTile(
//                               leading: Icon(
//                                 Icons.how_to_vote_outlined,
//                                 color: Colors.blue[400],
//                               ),
//                               title: Text(
//                                 '${position[index]}',
//                                 style: TextStyle(
//                                     color: Colors.black.withOpacity(0.6)),
//                               ),
//                             ),
//                           ),
//                         );
//                       })),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.030,
//                 ),
//                 Row(
//                   children: [
//                     RaisedButton.icon(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(40)),
//                       label: Text(
//                         'Back',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       color: Colors.blue,
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon: Icon(
//                         Icons.arrow_back,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(width: MediaQuery.of(context).size.width * 0.3),
//                     RaisedButton.icon(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(40)),
//                       label: Text(
//                         'Profile',
//                         style: TextStyle(color: Colors.blue),
//                       ),
//                       color: Colors.white,
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ProfilePage()));
//                       },
//                       icon: Icon(
//                         Icons.person,
//                         color: Colors.blue,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
