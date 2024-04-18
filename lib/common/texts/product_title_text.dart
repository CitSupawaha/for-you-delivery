import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  const TProductTitleText(
      {super.key,
      required this.title,
      this.smallSize = false,
      this.maxLines = 2,
      this.textAlign = TextAlign.left,
      this.color = Colors.black});
  final String title;
  final bool smallSize;
  final int maxLines;
  final Color? color;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize
          ? Theme.of(context)
              .textTheme
              .bodyLarge!
              .apply(color: color!.withOpacity(0.6))
          : Theme.of(context)
              .textTheme
              .titleSmall!
              .apply(color: color!.withOpacity(0.6)),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
