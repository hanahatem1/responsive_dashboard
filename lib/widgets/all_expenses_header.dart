import 'package:flutter/material.dart';
import 'package:responsive_project/utils/app_styles.dart';
import 'package:responsive_project/widgets/range_options.dart';

class AllExpenseHeader extends StatelessWidget {
  const AllExpenseHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('All Expenses',style:AppStyles.styleSemiBold20),
        Expanded(child: SizedBox()),
        RangeOptions(),
      ],
    );
  }
}

