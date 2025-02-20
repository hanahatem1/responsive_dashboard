import 'package:flutter/material.dart';
import 'package:responsive_project/models/all_expnses_item_model.dart';
import 'package:responsive_project/utils/app_images.dart';
import 'package:responsive_project/widgets/all_expenses_header.dart';
import 'package:responsive_project/widgets/all_expenses_item.dart';
import 'package:responsive_project/widgets/all_expnses_items_list_view.dart';

class AllExpense extends StatelessWidget {
  const AllExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Column(
        children: [
          AllExpenseHeader(),
          SizedBox(height: 16),
         AllExpnsesItemsListView()
        ],
      ),
    );
  }
}
