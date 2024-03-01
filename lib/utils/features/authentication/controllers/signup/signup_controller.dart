import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_nadi_test/utils/features/authentication/screens/login/login.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // variables
  final pageController = PageController();

  void handleAlreadyAccount() {
    Get.offAll(const LoginScreen());
  }
}
