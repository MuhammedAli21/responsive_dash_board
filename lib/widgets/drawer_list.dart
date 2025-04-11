import 'package:flutter/material.dart';
import 'package:responsive_final_design/models/drawer_item_model.dart';
import 'package:responsive_final_design/utils/app_images.dart';
import 'package:responsive_final_design/widgets/drawer_item.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  final List<DrawerItemModel> drawerItem = [
    const DrawerItemModel(title: 'Dashboard', icon: Assets.imagesDashboard),
    const DrawerItemModel(
      title: 'My Transaction',
      icon: Assets.imagesTransaction,
    ),
    const DrawerItemModel(title: 'Statistics', icon: Assets.imagesStatistics),
    const DrawerItemModel(
      title: 'Wallet Account',
      icon: Assets.imagesWalletAccount,
    ),
    const DrawerItemModel(
      title: 'My Investments',
      icon: Assets.imagesInvestments,
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItem.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: DrawerItem(
              drawerItemModel: drawerItem[index],
              isActive: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
