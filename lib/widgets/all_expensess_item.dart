import 'package:flutter/material.dart';
import 'package:responsive_final_design/models/all_expensess_item_model.dart';
import 'package:responsive_final_design/utils/app_style.dart';
import 'package:responsive_final_design/widgets/active_inactive_expensess.dart';
import 'package:responsive_final_design/widgets/all_expensess_item_header.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  final AllExpensessItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveExpensessItem(itemModel: itemModel)
        : InActiveExpensessItem(itemModel: itemModel);
  }
}
