import 'package:flutter/material.dart';
import 'package:votingapp/pages/Login.dart';
import 'package:votingapp/widget/back.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  // color: Colors.red,
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.004),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 16,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 18.0,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 22.0,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
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
                  color: Colors.black.withOpacity(0.02),
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.000,
                  ),
                  child: Scrollbar(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 2,
                      shadowColor: Colors.black.withOpacity(0.4),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.57,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRect(
                                  child: Container(
                                    child: Align(
                                      alignment: Alignment.center,
                                      widthFactor:
                                          MediaQuery.of(context).size.width,
                                      heightFactor: 0.9,
                                      child: Image(
                                        image: AssetImage('images/home.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  // leading: Icon(Icons.account_circle),
                                  title: const Text(
                                    'Name of Person',
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                  subtitle: Text(
                                    'Secondary Text',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6),
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                                Text(
                                  'Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.030,
                ),
                Container(
                  // color: Colors.red,
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.004),
                  child: Row(
                    children: [
                      back_button(context),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.348,
                      ),
                      RaisedButton.icon(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        label: Text(
                          'Sign Out',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        clipBehavior: Clip.antiAlias,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VotingAppLogin()));
                        },
                        icon: Icon(
                          Icons.login_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
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
