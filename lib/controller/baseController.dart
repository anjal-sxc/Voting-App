import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../widget/enum.dart';

class BaseController extends GetxController {
  var _state = ViewState.Idle.obs;

  ViewState get state => _state.value;

  void setState(ViewState newState) {
    _state.value = newState;
  }
}
