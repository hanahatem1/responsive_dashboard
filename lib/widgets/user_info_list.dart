import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_project/models/user_info_model.dart';
import 'package:responsive_project/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel, });

final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Card(
        color:const Color(0xffFAFAFA),
        elevation: 0,
        child: Center(
          child: ListTile(
            leading: SvgPicture.asset(userInfoModel.image),
            title: Text(
              userInfoModel.title,
            style: AppStyles.styleSemiBold16,
            ),
            subtitle: Text(
              userInfoModel.subtile,
            style: AppStyles.styleRegular12,
            ),
          ),
        ),
      ),
    );
  }
}