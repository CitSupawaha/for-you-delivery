import 'package:flutter/material.dart';
import 'package:for_you_delivery/data/product/product.dart';
import 'package:for_you_delivery/features/shop/screens/home/controllers.card/cart_controller.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Obx(
                    () => Image.asset(
                      controller.currentProduct.value.image,
                      fit: BoxFit.cover,
                      height: 280,
                      //width: 300,
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
