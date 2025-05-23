import 'package:flutter/material.dart';
import 'package:responsive_final_design/models/drawer_item_model.dart';
import 'package:responsive_final_design/utils/app_images.dart';
import 'package:responsive_final_design/utils/user_info_model.dart';
import 'package:responsive_final_design/widgets/active_inactive_item.dart';
import 'package:responsive_final_design/widgets/drawer_list.dart';
import 'package:responsive_final_design/widgets/user_info_list_tile.dart';

class CustomeDrawer extends StatelessWidget {
  const CustomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const DrawerList(),

          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                InactiveSelection(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    icon: Assets.imagesSetting,
                  ),
                ),
                InactiveSelection(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    icon: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
