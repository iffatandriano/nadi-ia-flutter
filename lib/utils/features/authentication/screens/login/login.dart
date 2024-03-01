import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:todo_nadi_test/utils/common/styles/spacing_styles.dart';
import 'package:todo_nadi_test/utils/constants/sizes.dart';
import 'package:todo_nadi_test/utils/features/authentication/controllers/login/login_controller.dart';
import 'package:todo_nadi_test/utils/features/authentication/screens/login/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SigninController());

    return Scaffold(
      body: SingleChildScrollView(
        controller: controller.pageController,
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
                  'Sign in Account',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: TSizes.sm,
                ),
                const LoginForm()
              ],
            )
          ],
        ),
      ),
    );
  }
}
