import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:for_you_delivery/common/widgets/circular_container/circular_container.dart';
import 'package:for_you_delivery/common/widgets/images/t_rounded_image.dart';
import 'package:for_you_delivery/features/shop/controllers/home_controller.dart';
import 'package:for_you_delivery/utils/constants/colors.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners
              .map((url) => TRoundedImage(
                    imageUrl: url,
                    height: 100,
                  ))
              .toList(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    margin: const EdgeInsets.only(right: 10),
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? TColors.primaryColor
                        : Colors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
