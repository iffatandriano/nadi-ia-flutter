import 'package:flutter/material.dart';

// constants
import 'package:todo_nadi_test/utils/constants/image_strings.dart';

// helpers
import 'package:todo_nadi_test/utils/helpers/helper_functions.dart';

class ImageOnBoarding extends StatelessWidget {
  const ImageOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
        width: THelperFunctions.screenWidth() * 0.8,
        height: THelperFunctions.screenHeight() * 0.6,
        image: const AssetImage(TImages.onboardingScreen1));
  }
}
