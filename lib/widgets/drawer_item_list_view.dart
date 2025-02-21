// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_project/models/drawer_item_model.dart';
import 'package:responsive_project/utils/app_images.dart';
import 'package:responsive_project/widgets/drawer_item.dart';

class DrawerItemListview extends StatefulWidget {
  const DrawerItemListview({
    super.key,
  });

 
  @override
  State<DrawerItemListview> createState() => _DrawerItemListviewState();
}

class _DrawerItemListviewState extends State<DrawerItemListview> {
  
 int activIndex = 0;

final List <DrawerItemModel> items= [
  DrawerItemModel(title: 'Dashboard', image: MyAsset.category),
  DrawerItemModel(title: 'My Transaction', image: MyAsset.convertCard),
  DrawerItemModel(title: 'Statistics', image: MyAsset.graph),
  DrawerItemModel(title: 'Wallet Account', image: MyAsset.wallet),
  DrawerItemModel(title: 'My Investments', image: MyAsset.chart),
];


  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
      itemCount: items.length,
      itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
            if(activIndex != index){
            setState(() {
              activIndex=index;
            });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(drawerItemModel: items[index], 
            isActive: activIndex == index,
            ),
          ),
        );
    });
  }
}