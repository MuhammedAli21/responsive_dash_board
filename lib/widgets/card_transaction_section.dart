import 'package:flutter/material.dart';
import 'package:responsive_final_design/widgets/card_section.dart';
import 'package:responsive_final_design/widgets/custom_container.dart';
import 'package:responsive_final_design/widgets/transactions_history_section.dart';

class CardTransactionSection extends StatelessWidget {
  const CardTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CusotmContainer(
      child: Column(
        children: [CardSection(), Divider(), TransactionsHistorySection()],
      ),
    );
  }
}
