import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:todo_nadi_test/utils/common/styles/spacing_styles.dart';
import 'package:todo_nadi_test/utils/constants/sizes.dart';
import 'package:todo_nadi_test/utils/features/authentication/controllers/signup/signup_controller.dart';
import 'package:todo_nadi_test/utils/features/authentication/screens/signup/widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

    return Scaffold(
        body: SingleChildScrollView(
      controller: controller.pageController,
      child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: TSizes.sm,
                ),
                Text(
                  'Sign up Account',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: TSizes.sm,
                ),
                const SignupForm()
              ],
            )
          ],
        ),
      ),
    ));
  }
}
