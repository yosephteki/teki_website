import 'package:get/get.dart';

class ControllerBody extends GetxController {
  var activeBody = "BSIM";

  void changeBody(String input){
    activeBody = input;
    update();

  }
}