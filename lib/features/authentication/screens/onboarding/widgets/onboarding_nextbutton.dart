import 'package:flutter/material.dart';
import 'package:for_you_delivery/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:for_you_delivery/utils/constants/colors.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:for_you_delivery/utils/device/device_untility.dart';
import 'package:for_you_delivery/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavagatoinBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor:
                  dark ? TColors.buttonSecondary : TColors.buttonSecondary),
          child: const Icon(Icons.arrow_forward_ios),
        ));
  }
}
