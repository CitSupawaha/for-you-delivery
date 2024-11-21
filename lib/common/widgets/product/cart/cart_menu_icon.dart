import 'package:flutter/material.dart';
import 'package:for_you_delivery/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.count,
    required this.onPressed,
    required this.iconColor,
  });
  final int count;
  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    print(count);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        count == 0
            ? Container()
            : Positioned(
                right: 0,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100)),
                  child: Center(
                    child: Text(
                      count.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.light, fontSizeFactor: 0.8),
                    ),
                  ),
                ))
      ],
    );
  }
}
