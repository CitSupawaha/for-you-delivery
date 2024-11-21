import 'package:flutter/material.dart';
import 'package:for_you_delivery/features/cart/screens/order_item/widgets/cart_card.dart';
import 'package:for_you_delivery/features/cart/screens/order_item/widgets/checkout_card.dart';
import 'package:for_you_delivery/features/shop/screens/home/controllers.card/cart_controller.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class OrderItemPage extends StatelessWidget {
  const OrderItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      // body: SingleChildScrollView(
      //   child: Obx(() => Column(
      //           children: controller.orderItem.map((element) {
      //         return Text('sd ${element.product.title}');
      //       }).toList())),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: controller.cartItem.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key(controller.cartItem[index].product.id.toString()),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                // setState(() {
                //   demoCarts.removeAt(index);
                // });
              },
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        size: 28,
                        Iconsax.trash,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              child: CartCard(cart: controller.cartItem[index]),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CheckoutCard(),
    );
  }
}
