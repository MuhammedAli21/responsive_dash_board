import 'package:flutter/material.dart';
import 'package:responsive_final_design/utils/app_style.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('All Expenses', style: AppStyle.styleSemiBold20),
        RangeOptions(),
      ],
    );
  }
}

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: const Color(0xffF1F1F1)),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: const Row(
        children: [
          Text('Monthly', style: AppStyle.styleMedium16),
          Icon(Icons.keyboard_arrow_down, size: 32),
        ],
      ),
    );
  }
}
