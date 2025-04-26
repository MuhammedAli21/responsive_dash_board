import 'package:flutter/material.dart';
import 'package:responsive_final_design/utils/app_style.dart';
import 'package:responsive_final_design/widgets/quick_invoice_form.dart';
import 'package:responsive_final_design/widgets/user_transactions_list_view.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transactions', style: AppStyle.styleMedium16),
        SizedBox(height: 16),
        UserTransactionsListView(),
        Divider(height: 48),
        QuickInvoiceForm(),
      ],
    );
  }
}
