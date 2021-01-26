import 'package:votingapp/controller/userController.dart';
import 'package:votingapp/helper/profileHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
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
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildErrorWidget() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildSuccessWidget() {
    final articles = controller.article;
    return Container(
        child: GridView.count(
      crossAxisCount: 1,
      children: List.generate(articles.length, (index) {
        return Container(
          child: Column(
            children: [
              Text(
                "ID: {articles[index].id}",
                style: TextStyle(fontSize: 10),
              ),
              Text("Title:articles[index].id", style: TextStyle(fontSize: 10))
            ],
          ),
        );
      }),
    ));
  }
}
