import 'package:flutter/material.dart';
import 'package:for_you_delivery/common/widgets/product/product_detail/add_to_cart.dart';
import 'package:for_you_delivery/common/widgets/product/product_detail/color_and_size.dart';
import 'package:for_you_delivery/common/widgets/product/product_detail/counter_with_fav_btn.dart';
import 'package:for_you_delivery/common/widgets/product/product_detail/description.dart';
import 'package:for_you_delivery/common/widgets/product/product_detail/product_title_with_image.dart';
import 'package:for_you_delivery/data/product/product.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:for_you_delivery/utils/helpers/helper_functions.dart';

class IDetailProduct extends StatelessWidget {
  const IDetailProduct({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: THelperFunctions.screenHeight(),
              child: Stack(children: [
                Container(
                  margin: EdgeInsets.only(
                      top: THelperFunctions.screenHeight() * 0.3),
                  padding: EdgeInsets.only(
                      top: THelperFunctions.screenHeight() * 0.12,
                      left: TSizes.lg,
                      right: TSizes.lg),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusLg * 2),
                          topRight: Radius.circular(TSizes.cardRadiusLg * 2))),
                  child: Column(
                    children: [
                      ColorAndSize(
                        product: product,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      Description(
                        product: product,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      const CounterWithFavBtn(),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      AddToCart(
                        product: product,
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ]),
            )
          ],
        ),
      ),
    );
  }
}
