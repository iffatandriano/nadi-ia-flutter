import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:todo_nadi_test/utils/constants/sizes.dart';
import 'package:todo_nadi_test/utils/features/authentication/controllers/signup/signup_controller.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right), labelText: 'Username'),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: 'Password',
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          /// Sign in Button
          SizedBox(
            width: double.infinity,
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Signup')),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          /// Already have account
          SizedBox(
            width: double.infinity,
            child: TextButton(
                onPressed: () =>
                    SignupController.instance.handleAlreadyAccount(),
                child: const Text('Already have account?')),
          ),
        ],
      ),
    ));
  }
}
