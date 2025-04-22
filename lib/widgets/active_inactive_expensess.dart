import 'package:flutter/material.dart';
import 'package:responsive_final_design/models/all_expensess_item_model.dart';
import 'package:responsive_final_design/utils/app_style.dart';
import 'package:responsive_final_design/widgets/all_expensess_item_header.dart';

class InActiveExpensessItem extends StatelessWidget {
  const InActiveExpensessItem({super.key, required this.itemModel});

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xffF1F1F1), width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(image: itemModel.image),

          const SizedBox(height: 16),
          Text(itemModel.title, style: AppStyle.styleMedium16),
          const SizedBox(height: 8),
          Text(itemModel.date, style: AppStyle.styleRegular16),
          const SizedBox(height: 16),
          Text(itemModel.amount, style: AppStyle.styleSemiBold24),
        ],
      ),
    );
  }
}

class ActiveExpensessItem extends StatelessWidget {
  const ActiveExpensessItem({super.key, required this.itemModel});

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4db7f2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: itemModel.image,
            backGroundColor: Colors.white.withAlpha(25),
            imageColor: Colors.white,
          ),

          const SizedBox(height: 16),
          Text(
            itemModel.title,
            style: AppStyle.styleMedium16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppStyle.styleRegular16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 16),
          Text(
            itemModel.amount,
            style: AppStyle.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
