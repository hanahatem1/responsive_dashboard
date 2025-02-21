import 'package:flutter/material.dart';
import 'package:responsive_project/widgets/all_expense.dart';
import 'package:responsive_project/widgets/custom_drawer.dart';
import 'package:responsive_project/widgets/quick_invoice.dart';

class DashboardDeskyopLayout extends StatelessWidget {
  const DashboardDeskyopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(
          flex: 2,
          child:Column(
            children: [
              AllExpense(),
              SizedBox(height: 24),
              QuickInvoice()
            ],
          )
          )
      ],
    );
  }
}