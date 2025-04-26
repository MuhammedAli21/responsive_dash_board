import 'package:flutter/material.dart';
import 'package:responsive_final_design/widgets/all_enpsenss_and_quickinvoise.dart';
import 'package:responsive_final_design/widgets/custom_crdit_card.dart';

import 'package:responsive_final_design/widgets/custome_drawer.dart';

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
          child: SingleChildScrollView(
            child: AllExpensessAndQuickIvoiceSection(),
          ),
        ),
        SizedBox(width: 24),
        Expanded(child: CustomCrditCard()),
      ],
    );
  }
}
