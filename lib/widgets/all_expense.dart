import 'package:flutter/material.dart';
import 'package:responsive_project/widgets/all_expenses_header.dart';
import 'package:responsive_project/widgets/all_expnses_items_list_view.dart';
import 'package:responsive_project/widgets/custom_background_container.dart';

class AllExpense extends StatelessWidget {
  const AllExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAllBackGroundContainer(
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

