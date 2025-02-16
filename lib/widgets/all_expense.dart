import 'package:flutter/material.dart';
import 'package:responsive_project/widgets/all_expenses_header.dart';

class AllExpense extends StatelessWidget {
  const AllExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ) 
      ),
      child: Column(
        children: [
          AllExpenseHeader()
        ],
      ),
    );
  }
}

