import 'package:flutter/material.dart';
import 'package:responsive_project/widgets/adaptive_layout_widget.dart';
import 'package:responsive_project/widgets/dashboard_deskyop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
      mobileLayout: (context)=>const SizedBox(), 
      tabletLayout: (context)=>const SizedBox(),
      desktopLayout: (context)=>const DashboardDeskyopLayout()
       ),
    );
  }
}