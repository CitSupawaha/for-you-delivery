import 'package:flutter/material.dart';
import 'package:for_you_delivery/common/widgets/icons/t_circular_icon.dart';
import 'package:for_you_delivery/common/widgets/product/product_detail/card_counter.dart';
import 'package:for_you_delivery/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const CartCounter(),
        Container(
          padding: const EdgeInsets.all(0),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: const TCircularTcon(
            backgroundColor: Colors.transparent,
            icon: Iconsax.heart5,
            color: Colors.white,
            size: TSizes.iconSm,
          ),
        )
      ],
    );
  }
}
