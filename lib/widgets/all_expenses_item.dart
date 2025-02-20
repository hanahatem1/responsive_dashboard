import 'package:flutter/material.dart';
import 'package:responsive_project/models/all_expnses_item_model.dart';
import 'package:responsive_project/utils/app_styles.dart';
import 'package:responsive_project/widgets/all_expneses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});

final AllExpnsesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(12),
         border: Border.all(color: Color(0xffF1F1F1))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         AllExpensesItemHeader(
          img: itemModel.img,
         ),
         const SizedBox(height: 34,),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16,
         ),
         const SizedBox(height: 16,),
         Text(
          itemModel.date,
          style: AppStyles.styleRegular14,
         ),
         const SizedBox(height: 8,),
         Text(
          itemModel.price,
          style: AppStyles.styleSemiBold24,
         ),
        ],
      ),
    );
  }
}
