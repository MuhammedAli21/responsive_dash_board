import 'package:flutter/material.dart';
import 'package:responsive_final_design/widgets/all_expensess.dart';

import 'package:responsive_final_design/widgets/custome_drawer.dart';
import 'package:responsive_final_design/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomeDrawer()),
        SizedBox(width: 16),
        Expanded(
          flex: 2,
          child: Column(
            children: [AllExpensess(), SizedBox(height: 24), QuickInvoice()],
          ),
        ),
      ],
    );
  }
}
