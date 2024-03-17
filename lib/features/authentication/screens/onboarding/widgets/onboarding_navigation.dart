import 'package:flutter/material.dart';
import 'package:for_you_delivery/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:for_you_delivery/utils/constants/colors.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:for_you_delivery/utils/device/device_untility.dart';
import 'package:for_you_delivery/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: TDeviceUtils.getBottomNavagatoinBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 2,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 6),
        ));
  }
}
