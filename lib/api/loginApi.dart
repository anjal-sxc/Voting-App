import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:votingapp/model/usermodel.dart';

class ProfileAPI {
  Future<List<Articles>> getProfileList() async {
    String url = "https://yt-dj-rest.amicableenginee.repl.co/viewset/article/";
    try {
      final response = await http.get(
        url,
        headers: {"Content-Type": "application/json", "Authorization": ""},
      );
      print(url);
      if (response.statusCode == 200) {
        return Articles.mapArray(utf8.decode(response.bodyBytes));
      }
    } catch (e) {
      print("Profile list => $e");
    }
  }
}
