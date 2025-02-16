import 'package:flutter/material.dart';
import 'package:responsive_project/widgets/all_expense.dart';
import 'package:responsive_project/widgets/custom_drawer.dart';

class DashboardDeskyopLayout extends StatelessWidget {
  const DashboardDeskyopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 32,),
        Expanded(
          flex: 2,
          child:Column(
            children: [
              Expanded(child: AllExpense())
            ],
          )
          )
      ],
    );
  }
}