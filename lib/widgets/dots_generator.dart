import 'package:flutter/material.dart';
import 'package:responsive_final_design/widgets/custom_dot.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomDot(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
