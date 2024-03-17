import 'package:flutter/material.dart';
import 'package:for_you_delivery/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:for_you_delivery/features/authentication/screens/onboarding/widgets/onboarding_navigation.dart';
import 'package:for_you_delivery/features/authentication/screens/onboarding/widgets/onboarding_nextbutton.dart';
import 'package:for_you_delivery/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:for_you_delivery/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:for_you_delivery/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: Timages.onBoardingImage1,
                title: 'Find your  Comfort Food here',
                suTitle:
                    'Here You Can find a chef or dish for every taste and color. Enjoy!',
              ),
              OnBoardingPage(
                image: Timages.onBoardingImage2,
                title: 'Food Ninja is Where Your Comfort Food Lives',
                suTitle:
                    'Enjoy a fast and smooth food delivery at your doorstep',
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
