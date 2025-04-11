import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_final_design/models/drawer_item_model.dart';
import 'package:responsive_final_design/utils/app_style.dart';

class ActiveSelection extends StatelessWidget {
  const ActiveSelection({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.icon),
      title: Text(drawerItemModel.title, style: AppStyle.styleBold16),
      trailing: Container(color: const Color(0xff4eb7f2), width: 3.27),
    );
  }
}

class InactiveSelection extends StatelessWidget {
  const InactiveSelection({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.icon),
      title: Text(drawerItemModel.title, style: AppStyle.styleMedium16),
    );
  }
}
