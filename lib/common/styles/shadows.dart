import 'package:flutter/material.dart';
import 'package:for_you_delivery/utils/constants/colors.dart';

class TShadowStyle {
  static final verticaProductShadow = BoxShadow(
      color: TColors.dark.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
