import 'package:flutter/material.dart';
import 'package:responsive_project/models/drawer_item_model.dart';
import 'package:responsive_project/utils/app_images.dart';
import 'package:responsive_project/widgets/active_and_inactive_item.dart';
import 'package:responsive_project/widgets/drawer_item_list_view.dart';
import 'package:responsive_project/widgets/user_info_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
         SliverToBoxAdapter(
          child: UserInfoList(
              image: MyAsset.frame4,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com'
              ),
         ),
         SliverToBoxAdapter(
          child:  const SizedBox(
            height: 8,
          ),
         ),
          DrawerItemListview(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
                title: 'Setting system', image: MyAsset.settings),
          ),
          InActiveDrawerItem(
            drawerItemModel:
                DrawerItemModel(title: 'Logout account', image: MyAsset.logout),
          ),
          const SizedBox(height: 48,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
