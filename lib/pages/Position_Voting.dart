import 'package:votingapp/pages/Result.dart';
import 'package:flutter/material.dart';
import 'Result.dart';
import 'Position_Description.dart';
import 'package:votingapp/controller/userController.dart';
import 'package:votingapp/helper/profileHelper.dart';
import 'package:get/get.dart';
import 'package:votingapp/widget/back.dart';

class PositionVoting extends StatefulWidget {
  @override
  _PositionVotingState createState() => _PositionVotingState();
}

class _PositionVotingState extends State<PositionVoting> {
  final UserController controller = Get.put(UserController());

  void initState() {
    controller.getProfileList();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      initState: (_) => initState(),
      dispose: (state) => {},
      builder: (_) {
        return Obx(() => WidgetBuilderHelper(
              state: controller.state,
              onLoadingWidget: buildLoadingWidget(),
              onErrorWidget: buildErrorWidget(),
              onSuccessWidget: buildSuccessWidget(),
            ));
      },
    );
  }

  Widget buildLoadingWidget() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget buildErrorWidget() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildSuccessWidget() {
    final articles = controller.article;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.08,
            ),
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.002),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Position Voting',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22.0,
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.227),
                      RaisedButton.icon(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        label: Text(
                          'Results',
                          style: TextStyle(color: Colors.blue),
                        ),
                        icon: Icon(
                          Icons.analytics_outlined,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResultPage()));
                        },
                        color: Colors.white,
                        splashColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.030,
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
                  width: MediaQuery.of(context).size.width * 0.853,
                  child: Scrollbar(
                    // isAlwaysShown: true,
                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(articles.length, (index) {
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
                                    '${articles[index].author}',
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
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.004),
                  child: Row(
                    children: [
                      back_button(context),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.38,
                      ),
                      profile_button(context),
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
