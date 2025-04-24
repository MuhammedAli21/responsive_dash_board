import 'package:flutter/material.dart';
import 'package:responsive_final_design/utils/app_style.dart';
import 'package:responsive_final_design/widgets/custom_container.dart';
import 'package:responsive_final_design/widgets/latest_transactions.dart';
import 'package:responsive_final_design/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CusotmContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 16),
          LatestTransactions(),
        ],
      ),
    );
  }
}
