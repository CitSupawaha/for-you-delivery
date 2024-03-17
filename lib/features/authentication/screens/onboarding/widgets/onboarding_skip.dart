import "package:flutter/material.dart";
import "package:for_you_delivery/features/authentication/controllers.onboarding/onboarding_controller.dart";
import "package:for_you_delivery/utils/constants/sizes.dart";
import "package:for_you_delivery/utils/device/device_untility.dart";

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text('Skip'),
        ));
  }
}
