import 'package:flutter/material.dart';
import 'package:responsive_final_design/models/transaction_item_model.dart';
import 'package:responsive_final_design/widgets/transaction_history_item.dart';

class TransactionListBuilder extends StatelessWidget {
  const TransactionListBuilder({super.key});

  static final item = [
    TransactionItemModel(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdrawable: true,
    ),
    TransactionItemModel(
      title: 'Landing Page Project',
      subTitle: '13 Apr, 2022 ',
      amount: r'$2,000',
      isWithdrawable: false,
    ),
    TransactionItemModel(
      title: 'Juni Mobile App Project',
      subTitle: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdrawable: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionHistoryItem(transactionItemModel: item[index]);
      },
    );
  }
}
