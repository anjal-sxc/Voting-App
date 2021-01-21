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
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 24.0,
                      ),
                      textColor: Colors.white,
                      color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      shape: CircleBorder(),
                    ),
                    Text(
                      'Results',
                      style: TextStyle(fontSize: 22.0, color: Colors.blue[500]),
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
                          ],
                        ),
                      ),
                    ),
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
