import 'package:flutter/material.dart';
import 'package:responsive_final_design/widgets/all_expensess.dart';
import 'package:responsive_final_design/widgets/quick_invoice.dart';

class AllExpensessAndQuickIvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickIvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        AllExpensess(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
