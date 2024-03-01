import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_nadi_test/utils/features/authentication/screens/login/login.dart';
import 'package:todo_nadi_test/utils/features/authentication/screens/signup/signup.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // variables
  final pageController = PageController();

  void handleSignUp() {
    Get.offAll(const SignupScreen());
  }

  void handleLogin() {
    Get.offAll(const LoginScreen());
  }
}
