import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            // height: MediaQuery.of(context).size.height * ,
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.08),

            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.arrow_back,
                        size: 24,
                      ),
                      padding: EdgeInsets.all(10),
                      shape: CircleBorder(),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.blue[500],
                          fontSize: 22.0,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Scrollbar(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 1.5,
                    child: Container(
                      height: 480,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                            ClipRect(
                              child: Container(
                                child: Align(
                                  alignment: Alignment.center,
                                  widthFactor: 0.9,
                                  heightFactor: 0.9,
                                  child: Image(
                                    image: AssetImage('images/home.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            ListTile(
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
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),

                            //
                            // ButtonBar(
                            //   alignment: MainAxisAlignment.start,
                            //   children: [
                            //     FlatButton.icon(
                            //       icon: Icon(
                            //         Icons.build_rounded,
                            //         size: 16,
                            //       ),
                            //       label: Text('Update'),
                            //       textColor: const Color(0xFF42A5F5),
                            //       onPressed: () {
                            //         // Perform some action
                            //       },
                            //       // child: const Text('Update'),
                            //     ),
                            //     // FlatButton(
                            //     //   textColor: const Color(0xFF6200EE),
                            //     //   onPressed: () {
                            //     //     // Perform some action
                            //     //   },
                            //     //   child: const Text('ACTION 2'),
                            //     // ),
                            //   ],
                            // ),

                            // Image.asset('assets/card-sample-image-2.jpg'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // color: Colors.blue,
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
