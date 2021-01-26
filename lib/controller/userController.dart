import 'package:votingapp/api/loginApi.dart';
import 'package:votingapp/controller/baseController.dart';
import 'package:votingapp/model/usermodel.dart';
import 'package:votingapp/widget/enum.dart';

class UserController extends BaseController {
  ProfileAPI api = ProfileAPI();
  List<Articles> article;

  getProfileList() async {
    setState(ViewState.Busy);
    await api.getProfileList().then((value) => article = value);
    setState(ViewState.Retrieved);
  }
}
