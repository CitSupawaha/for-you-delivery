import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:for_you_delivery/common/layouts/grid_layout.dart';
import 'package:for_you_delivery/common/widgets/circular_container/circular_container.dart';
import 'package:for_you_delivery/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:for_you_delivery/common/widgets/images/t_rounded_image.dart';
import 'package:for_you_delivery/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:for_you_delivery/common/widgets/product/product_detail/product_detail.dart';
import 'package:for_you_delivery/common/widgets/texts/section_heading.dart';
import 'package:for_you_delivery/data/product/product.dart';
import 'package:for_you_delivery/features/shop/screens/home/controllers.card/cart_controller.dart';
import 'package:for_you_delivery/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:for_you_delivery/features/shop/screens/home/widgets/home_categories.dart';
import 'package:for_you_delivery/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:for_you_delivery/utils/constants/image_strings.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const THomeAppbar(),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            const TSearchContainer(
              text: "Search in Store",
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            const Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: TPromoSlider(
                  banners: [Timages.banner, Timages.banner2],
                )),
            const Padding(
              padding: EdgeInsets.only(left: TSizes.defaultSpace),
              child: Column(
                children: [
                  TSectionHeading(
                    title: "Popular Categories",
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  THomeCategories(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                    title: "Popular Menu",
                    showActionButton: true,
                    buttonTitle: "View all",
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TGridLayout(
                    itemCount: products.length,
                    itemBuilder: (_, index) => TProductCardVertical(
                        product: products[index],
                        press: () =>
                            Get.to(IDetailProduct(product: products[index]))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
