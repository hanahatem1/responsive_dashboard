import 'package:flutter/material.dart';
import 'package:responsive_project/models/all_expnses_item_model.dart';
import 'package:responsive_project/widgets/active_and_inactive_expnses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel, required this.isSelected});

final bool isSelected;
final AllExpnsesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
     return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      firstChild: InActiveExpnsesItems(itemModel: itemModel),
      secondChild: ActiveExpnsesItems(itemModel: itemModel),
      crossFadeState:
          isSelected ? CrossFadeState.showSecond : CrossFadeState.showFirst,
    );
  }
}

