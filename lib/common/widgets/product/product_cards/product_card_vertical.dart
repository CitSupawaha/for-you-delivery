import 'package:flutter/material.dart';
import 'package:for_you_delivery/common/styles/shadows.dart';
import 'package:for_you_delivery/common/texts/product_title_text.dart';
import 'package:for_you_delivery/common/widgets/icons/t_circular_icon.dart';
import 'package:for_you_delivery/common/widgets/images/t_rounded_image.dart';
import 'package:for_you_delivery/common/widgets/rounded_container/rounded_container.dart';
import 'package:for_you_delivery/common/widgets/texts/product_price_text.dart';
import 'package:for_you_delivery/utils/constants/colors.dart';
import 'package:for_you_delivery/utils/constants/image_strings.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticaProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: Colors.white),
        child: Column(
          children: [
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: Colors.grey.withOpacity(0.1),
              child: Stack(
                children: [
                  const TRoundedImage(
                    imageUrl: Timages.product3,
                    backgroundColor: Colors.transparent,
                    applyImageRaduis: true,
                    width: 160,
                    height: 180,
                  ),
                  Positioned(
                    top: 0,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: Colors.yellow.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: TColors.dark),
                      ),
                    ),
                  ),

                  // Favorite Icon Button
                  const Positioned(
                    top: -10,
                    right: -10,
                    child: TCircularTcon(
                      backgroundColor: Colors.transparent,
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(
                    title: "Green Nike Air Shoes",
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Nike",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: TSizes.xs,
                      ),
                      const Icon(
                        Iconsax.verify5,
                        color: TColors.primaryColor,
                        size: TSizes.iconXs,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(
                    price: "35",
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.productImageRadius))),
                  child: const SizedBox(
                    width: TSizes.iconLD * 1.2,
                    height: TSizes.iconLD * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: TColors.light,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
