import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_final_design/models/drawer_item_model.dart';
import 'package:responsive_final_design/utils/app_style.dart';
import 'package:responsive_final_design/widgets/active_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveSelection(drawerItemModel: drawerItemModel)
        : InactiveSelection(drawerItemModel: drawerItemModel);
  }
}
