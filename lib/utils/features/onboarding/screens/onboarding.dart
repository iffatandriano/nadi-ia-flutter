import 'package:flutter/material.dart';

// screens
import 'package:todo_nadi_test/utils/common/widgets/login_signups/login_buttons.dart';
import 'package:todo_nadi_test/utils/features/onboarding/screens/widgets/onboarding_image.dart';

// constants
import 'package:todo_nadi_test/utils/constants/sizes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const ImageOnBoarding(),
          Text(
            'Welcome!',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            'Make your activity still productive',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            'With create your todo list',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          const LoginButtons(),
        ],
      ),
    ));
  }
}
