import 'package:flutter/material.dart';
import 'package:responsive_project/models/all_expnses_item_model.dart';
import 'package:responsive_project/utils/app_images.dart';
import 'package:responsive_project/widgets/all_expenses_item.dart';

class AllExpnsesItemsListView extends StatefulWidget {
  const AllExpnsesItemsListView({super.key});

  @override
  State<AllExpnsesItemsListView> createState() => _AllExpnsesItemsListViewState();
}

class _AllExpnsesItemsListViewState extends State<AllExpnsesItemsListView> {
  final items=[
 // ignore: prefer_const_constructors
 AllExpnsesItemModel(img: MyAsset.money, title: 'Balance', date: 'April 2022', price: '\$20,129'),
 // ignore: prefer_const_constructors
 AllExpnsesItemModel(img: MyAsset.cardRecieve, title: 'Income', date: 'April 2022', price: '\$20,129'),
 // ignore: prefer_const_constructors
 AllExpnsesItemModel(img: MyAsset.cardRecieve, title: 'Expenses', date: 'April 2022', price: '\$20,129'),

];
int selctedIndax=0;
  @override
  Widget build(BuildContext context) {
    return Row(
     children: items.asMap().entries.map((e){
      int index=e.key;
      var item=e.value;

      if(index==1){
        return Expanded(
          child: GestureDetector(
            onTap: (){
           updateIndex(index);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(itemModel: item, isSelected: selctedIndax==index,),
            ),
          ),
        );
      }
       else {
          return Expanded(
            child: GestureDetector(
              onTap: (){
               updateIndex (index);
              },
              child: AllExpensesItem(itemModel: item, isSelected: selctedIndax==index,),
            ),
          );
        }
     }).toList(),
    );
  }
  
  void updateIndex(int index) {
    setState(() {
      selctedIndax =index;
    });
  }
}