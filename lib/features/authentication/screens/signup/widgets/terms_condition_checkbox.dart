import 'package:flutter/material.dart';
import 'package:for_you_delivery/utils/constants/colors.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:for_you_delivery/utils/helpers/helper_functions.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: "I agree to", style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: " Privacy Policy",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.textWhite : TColors.textPrimary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? TColors.textWhite : TColors.textPrimary)),
          TextSpan(text: " and", style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: " Terms of use",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.textWhite : TColors.textPrimary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? TColors.textWhite : TColors.textPrimary)),
        ]))
      ],
    );
  }
}
