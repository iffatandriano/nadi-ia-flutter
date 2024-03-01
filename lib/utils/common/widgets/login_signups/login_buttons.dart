import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_nadi_test/utils/constants/colors.dart';
import 'package:todo_nadi_test/utils/features/onboarding/controllers/onboarding/onboarding_controller.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: TColors.grey),
                borderRadius: BorderRadius.circular(8)),
            child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () => controller.handleSignUp(),
                child: const Text('Sign-Up'))),
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: TColors.primary),
                borderRadius: BorderRadius.circular(8)),
            child: TextButton(
                onPressed: () => controller.handleLogin(),
                child: const Text('Login'))),
      ],
    );
  }
}
