import 'package:flutter/material.dart';
import 'package:responsive_project/models/user_info_model.dart';
import 'package:responsive_project/utils/app_images.dart';
import 'package:responsive_project/widgets/user_info_list.dart';

class LatestTransationListView extends StatelessWidget {
  const LatestTransationListView({super.key});

static const items=[
  UserInfoModel(image: MyAsset.frame2, title: 'Madrani Andi', subtile: 'Madraniadi20@gmail'),
  UserInfoModel(image: MyAsset.frame1, title: 'Madrani Andi', subtile: 'Madraniadi20@gmail'),
  UserInfoModel(image: MyAsset.frame3, title: 'Madrani Andi', subtile: 'Madraniadi20@gmail'),
];
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e)=>IntrinsicWidth(child: UserInfoListTile(userInfoModel: e))).toList()
        ),
    );
    
    SizedBox(
      height:80 ,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context,index){
          return IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: UserInfoListTile(
                userInfoModel: items[index]
                ),
            )); 
        }
      ),
    );
  }
}