import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:for_you_delivery/common/styles/shadows.dart';
import 'package:for_you_delivery/common/texts/product_title_text.dart';
import 'package:for_you_delivery/common/widgets/icons/t_circular_icon.dart';
import 'package:for_you_delivery/common/widgets/images/t_rounded_image.dart';
import 'package:for_you_delivery/common/widgets/product/product_detail/product_detail.dart';
import 'package:for_you_delivery/common/widgets/rounded_container/rounded_container.dart';
import 'package:for_you_delivery/common/widgets/texts/product_price_text.dart';
import 'package:for_you_delivery/data/product/product.dart';
import 'package:for_you_delivery/features/shop/screens/home/controllers.card/cart_controller.dart';
import 'package:for_you_delivery/utils/constants/colors.dart';
import 'package:for_you_delivery/utils/constants/image_strings.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical(
      {super.key, required this.product, required this.press});

  final Product product;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    // final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticaProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: Colors.white),
      child: Column(
        children: [
          GestureDetector(
            onTap: press,
            child: TRoundedContainer(
              height: 150,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: product.color.withOpacity(0.1),
              child: Stack(
                children: [
                  Hero(
                    tag: "${product.id}",
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        product.image,
                        width: 140,
                        height: 140,
                        fit: BoxFit.contain,
                      ),
                    ),
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
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems / 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TProductTitleText(
                  title: product.title,
                  smallSize: true,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems / 4,
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
              Padding(
                padding: const EdgeInsets.only(left: TSizes.sm),
                child: TProductPriceText(
                  price: product.price.toString(),
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.addToCart(product);
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.productImageRadius))),
                  child: const SizedBox(
                    width: TSizes.iconLD * 1, //1.2
                    height: TSizes.iconLD * 1, //1.2
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: TColors.light,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
