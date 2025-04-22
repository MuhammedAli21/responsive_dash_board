import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.backGroundColor,
  });

  final String image;
  final Color? imageColor, backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: backGroundColor ?? const Color(0xffF1F1F1),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
              imageColor ?? const Color(0xff4db7f2),
              BlendMode.srcIn,
            ),
          ),
        ),
        Icon(
          Icons.keyboard_arrow_right,
          size: 32,
          color: imageColor == null ? const Color(0xff064061) : Colors.white,
        ),
      ],
    );
  }
}
