import 'package:flutter/material.dart';
import 'package:responsive_final_design/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Quick Invoice', style: AppStyle.styleSemiBold20),
        CircleAvatar(
          backgroundColor: Colors.white.withAlpha(25),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add, color: Color(0xff4eb7f2)),
          ),
        ),
      ],
    );
  }
}
