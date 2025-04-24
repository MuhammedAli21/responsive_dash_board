import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_final_design/utils/app_style.dart';
import 'package:responsive_final_design/utils/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xfffafafa),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(userInfoModel.title, style: AppStyle.styleSemiBold16),
          subtitle: Text(
            userInfoModel.subtitle,
            style: AppStyle.styleRegular12,
          ),
        ),
      ),
    );
  }
}
