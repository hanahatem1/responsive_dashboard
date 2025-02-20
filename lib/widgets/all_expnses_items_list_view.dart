import 'package:flutter/material.dart';
import 'package:responsive_project/models/all_expnses_item_model.dart';
import 'package:responsive_project/utils/app_images.dart';
import 'package:responsive_project/widgets/all_expenses_item.dart';

class AllExpnsesItemsListView extends StatelessWidget {
  const AllExpnsesItemsListView({super.key});

static const items=[
 AllExpnsesItemModel(img: MyAsset.money, title: 'Balance', date: 'April 2022', price: '\$20,129'),
 AllExpnsesItemModel(img: MyAsset.cardRecieve, title: 'Income', date: 'April 2022', price: '\$20,129'),
 AllExpnsesItemModel(img: MyAsset.cardRecieve, title: 'Expenses', date: 'April 2022', price: '\$20,129'),

];
  @override
  Widget build(BuildContext context) {
    return Row(
     // children: items.map((e)=> Expanded(child: AllExpensesItem(itemModel: e))).toList()   
     children: items.asMap().entries.map((e){
      int index=e.key;
      var item=e.value;

      if(index==1){
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: AllExpensesItem(itemModel: item),
          ),
        );
      }
       else {
          return Expanded(child: AllExpensesItem(itemModel: item));
        }
     }).toList(),
    );
  }
}