import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:for_you_delivery/common/widgets/product/product_detail/card_counter.dart';
import 'package:for_you_delivery/data/product/product.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:for_you_delivery/utils/helpers/helper_functions.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final CartItem cart;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: cart.product.color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                  padding: const EdgeInsets.all(4),
                  // decoration: BoxDecoration(
                  //   color: cart.product.color.withOpacity(0.2),
                  //   borderRadius: BorderRadius.circular(15),
                  // ),
                  child: Image.asset(
                    cart.product.image,
                    height: 20,
                  )),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cart.product.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputField / 4),
                    Text(
                      cart.product.title,
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                      maxLines: 2,
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputField / 4),
                    Text.rich(
                      TextSpan(
                        text: "\$${cart.product.price}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFF7643)),
                        children: [
                          TextSpan(
                              text: " x${cart.quantity}",
                              style: Theme.of(context).textTheme.bodyLarge),
                        ],
                      ),
                    )
                  ],
                ),
                CartCounter(
                  count: cart.quantity,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
