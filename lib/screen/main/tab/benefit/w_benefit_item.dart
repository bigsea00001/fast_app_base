import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import 'vo_benefit.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;

  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          benefit.imagePath,
          width: 50,
          height: 50,
        ),
        width10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefit.subTitle.text.white.size(13).make(),
            height5,
            benefit.title.text
                .color(context.appColors.blueText)
                .bold
                .size(13)
                .make(),
          ],
        ),
      ],
    ).pSymmetric(v: 20);
  }
}
