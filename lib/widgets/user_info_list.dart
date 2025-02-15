import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_project/utils/app_styles.dart';

class UserInfoList extends StatelessWidget {
  const UserInfoList({super.key, required this.image, required this.title, required this.subtitle});

final  String image,title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Card(
        color: Color(0xffFAFAFA),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: Text(
            title,
          style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            subtitle,
          style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}