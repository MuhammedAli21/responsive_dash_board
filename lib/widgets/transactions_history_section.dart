import 'package:flutter/material.dart';
import 'package:responsive_final_design/utils/app_style.dart';
import 'package:responsive_final_design/widgets/transaction_header.dart';
import 'package:responsive_final_design/widgets/transaction_list_builder.dart';

class TransactionsHistorySection extends StatelessWidget {
  const TransactionsHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHearder(),
        const SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16.copyWith(
            color: const Color(0xffaaaaaa),
          ),
        ),
        const SizedBox(height: 8),
        const TransactionListBuilder(),
      ],
    );
  }
}
