import 'package:flutter/material.dart';
import 'package:responsive_project/models/all_expnses_item_model.dart';
import 'package:responsive_project/utils/app_styles.dart';
import 'package:responsive_project/widgets/all_expneses_item_header.dart';

class InActiveExpnsesItems extends StatelessWidget {
  const InActiveExpnsesItems({
    super.key,
    required this.itemModel,
  });

  final AllExpnsesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(12),
         border: Border.all(color:const Color(0xffF1F1F1))
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

class ActiveExpnsesItems extends StatelessWidget {
  const ActiveExpnsesItems({
    super.key,
    required this.itemModel,
  });

  final AllExpnsesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: BoxDecoration(
         color:const Color(0xff4EB7F2),
         borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         AllExpensesItemHeader(
          img: itemModel.img,
          imgBackcolor: Colors.white.withOpacity(.1),
          imgColor: Colors.white,
         ),
         const SizedBox(height: 34,),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16.copyWith(color: Colors.white),
         ),
         const SizedBox(height: 16,),
         Text(
          itemModel.date,
          style: AppStyles.styleRegular14.copyWith(color: Colors.white),
         ),
         const SizedBox(height: 8,),
         Text(
          itemModel.price,
          style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
         ),
        ],
      ),
    );
  }
}
