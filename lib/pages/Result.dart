import 'package:flutter/material.dart';
import 'package:votingapp/widget/back.dart';

import 'package:votingapp/controller/userController.dart';
import 'package:votingapp/helper/profileHelper.dart';
import 'package:get/get.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
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
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Text('No Internet Connection Found.'),
    );
    ;
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
                            child: Column(children: [
                              Container(
                                  child: Column(
                                children:
                                    List.generate(articles.length, (index) {
                                  return Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRect(
                                          child: Container(
                                            child: Align(
                                              alignment: Alignment.center,
                                              widthFactor:
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              heightFactor: 0.9,
                                              child: Image(
                                                image: AssetImage(
                                                    'images/home.jpg'),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          contentPadding: EdgeInsets.all(0),
                                          // leading: Icon(Icons.account_circle),
                                          title: Text(
                                            "${articles[index].author}",
                                            style: TextStyle(fontSize: 18.0),
                                          ),
                                          subtitle: Text(
                                            "${articles[index].title}",
                                            style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ),
                                        Text(
                                          " ${articles[index].email}     ${articles[index].date} ",
                                          style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.6),
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.035,
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                              ))
                            ])),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.62, 0, 0, 0),
                  child: back_button(context),
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
