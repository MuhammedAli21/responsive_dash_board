import 'package:flutter/material.dart';
import 'package:responsive_final_design/models/transaction_item_model.dart';
import 'package:responsive_final_design/utils/app_style.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.transactionItemModel});
  final TransactionItemModel transactionItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0x00fafafa),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionItemModel.title,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          transactionItemModel.subTitle,
          style: AppStyle.styleRegular16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transactionItemModel.amount,
          style: AppStyle.styleSemiBold20.copyWith(
            color:
                transactionItemModel.isWithdrawable
                    ? const Color(0xffF3735E)
                    : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
