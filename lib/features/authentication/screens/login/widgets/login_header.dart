import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_you_delivery/utils/constants/image_strings.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Timages.appLogo3,
          semanticsLabel: 'Acme Logo3',
          height: 150,
        ),
        const SizedBox(
          height: TSizes.defaultSpace,
        ),
        Text(
          "Welcome To Delivery",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections / 2,
        ),
      ],
    );
  }
}
