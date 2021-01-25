import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PositionDescription extends StatelessWidget {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            // height: MediaQuery.of(context).size.height * ,
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      'Position Description',
                      style: TextStyle(
                          color: Colors.blue[500],
                          fontSize: 22.0,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  'Scroll for description',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3),
                      fontSize: 14.0,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Expanded(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 2,
                    shadowColor: Colors.black.withOpacity(0.4),
                    child: Scrollbar(
                      controller:
                          _scrollController, // <---- Here, the controller
                      // isAlwaysShown: true,
                      radius: Radius.circular(20),

                      // thickness:
                      // CupertinoScrollbar.defaultThicknessWhileDragging,
                      // <---- Required
                      child: SingleChildScrollView(
                        controller:
                            _scrollController, // <---- Same as the Scrollbar controller
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                  ),
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
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02,
                                  ),
                                  RaisedButton.icon(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    label: Text(
                                      'Vote',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    color: Colors.blue,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.how_to_vote,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                  ),
                                ],
                              ),
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
          ),
        ),
      ),
      // color: Colors.white,
    );
  }
}
