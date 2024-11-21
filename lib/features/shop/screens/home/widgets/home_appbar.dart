import 'package:flutter/material.dart';
import 'package:for_you_delivery/common/widgets/appbar/appbar.dart';
import 'package:for_you_delivery/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:for_you_delivery/features/cart/screens/order_item/order_item.dart';
import 'package:for_you_delivery/features/shop/screens/home/controllers.card/cart_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class THomeAppbar extends StatelessWidget {
  const THomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good day for shopping",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.grey),
          ),
          Text(
            "Cit Supawaha",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.black),
          ),
        ],
      ),
      actions: [
        Obx(
          () => TCartCounterIcon(
            count: controller.cartItem.length,
            onPressed: () => Get.to(const OrderItemPage()),
            iconColor: const Color(0xFF15BE77),
          ),
        )
      ],
    );
  }
}
