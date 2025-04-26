import 'package:flutter/material.dart';
import 'package:responsive_final_design/widgets/custom_button.dart';
import 'package:responsive_final_design/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer Name',
                hint: 'Type Customer Name',
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(title: 'Item Name', hint: 'Type Item Name'),
            ),
            SizedBox(width: 12),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD')),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                backgroundColor: Colors.transparent,
                textColor: Color(0xff4eb7f2),
              ),
            ),
            SizedBox(width: 16),
            Expanded(child: CustomButton(title: 'Send Money')),
          ],
        ),
      ],
    );
  }
}
