import 'package:flutter/material.dart';
import 'package:for_you_delivery/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:for_you_delivery/data/product/product.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.lg),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: TSizes.lg),
            height: 50,
            // width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: const Color(0xFF15BE77),
              ),
            ),
            child: TCartCounterIcon(
              count: 0,
              onPressed: () {},
              iconColor: const Color(0xFF15BE77),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.transparent),
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                backgroundColor: product.color,
              ),
              child: Text(
                "Buy  Now".toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
