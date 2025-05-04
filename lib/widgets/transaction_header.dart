import 'package:flutter/material.dart';
import 'package:responsive_final_design/utils/app_style.dart';

class TransactionHearder extends StatelessWidget {
  const TransactionHearder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Transaction History', style: AppStyle.styleSemiBold20),
        Text(
          'See all',
          style: AppStyle.styleMedium16.copyWith(
            color: const Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
