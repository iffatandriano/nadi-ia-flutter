import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_nadi_test/utils/features/todo/screens/todo.dart';

class SigninController extends GetxController {
  static SigninController get instance => Get.find();

  // variables
  final pageController = PageController();

  void handleSignin() {
    Get.offAll(const TodoScreen());
  }
}
