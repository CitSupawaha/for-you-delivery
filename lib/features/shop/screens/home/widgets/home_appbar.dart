import 'package:flutter/material.dart';
import 'package:for_you_delivery/common/widgets/appbar/appbar.dart';
import 'package:for_you_delivery/common/widgets/product/cart/cart_menu_icon.dart';

class THomeAppbar extends StatelessWidget {
  const THomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        TCartCounterIcon(
          count: 0,
          onPressed: () {},
          iconColor: const Color(0xFF15BE77),
        )
      ],
    );
  }
}
