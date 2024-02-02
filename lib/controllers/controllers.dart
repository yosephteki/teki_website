import 'package:get/get.dart';

class ControllerBody extends GetxController {
  final RxString activeBody = "BSIM".obs;

  void changeBody(String input){
    activeBody.value = input;
    update();
  }
}