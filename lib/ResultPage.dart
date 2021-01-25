import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.08,
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 16,
                      child: Icon(
                        Icons.analytics_outlined,
                        color: Colors.white,
                        size: 18.0,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Results',
                          style: TextStyle(
                              fontSize: 22.0, color: Colors.blue[500]),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.042,
                ),
                Text(
                  'Scroll for more',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.3),
                    fontSize: 14.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.006,
                ),
                Scrollbar(
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
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
              ],
            ),
            // color: Colosrs.blue,
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
