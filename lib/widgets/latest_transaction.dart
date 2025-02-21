import 'package:flutter/material.dart';
import 'package:responsive_project/utils/app_styles.dart';
import 'package:responsive_project/widgets/latest_transactions_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text('Latest Transaction',style: AppStyles.styleMedium16,),
        SizedBox(height: 16,),
        LatestTransationListView(),
      ],
    );
  }
}

