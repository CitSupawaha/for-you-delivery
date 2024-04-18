import 'package:flutter/material.dart';
import 'package:for_you_delivery/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:for_you_delivery/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: Timages.product,
            title: "ป้าหนุ่ย ตุยเย่",
            //backgroundColor: const Color(0xFFF9A84D).withOpacity(0.8),
            onTap: () {},
          );
        },
      ),
    );
  }
}
