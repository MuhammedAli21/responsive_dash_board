import 'package:flutter/material.dart';
import 'package:responsive_final_design/utils/app_images.dart';
import 'package:responsive_final_design/utils/user_info_model.dart';
import 'package:responsive_final_design/widgets/user_info_list_tile.dart';

class UserTransactionsListView extends StatelessWidget {
  const UserTransactionsListView({super.key});

  static final item = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            item
                .map(
                  (e) =>
                      IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
                )
                .toList(),
      ),
    );

    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     children: [
    //       ...List.generate(item.length, (index) {
    //         return IntrinsicWidth(
    //           child: UserInfoListTile(userInfoModel: item[index]),
    //         );
    //       }),
    //     ],
    //   ),
    // );

    // return SizedBox(
    //   height: 75,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: item.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(userInfoModel: item[index]),
    //       );
    //     },
    //   ),
    // );
  }
}
