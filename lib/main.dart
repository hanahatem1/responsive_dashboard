import 'package:flutter/material.dart';
import 'package:responsive_project/views/dash_board_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}

/*double getResponsiveFontSize(BuildContext context,{required double fontSize}){
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSiz = fontSize*scaleFactor;

  double lowerlimit=fontSize*.8;
  double upperLimit= fontSize*1.2;
  return responsiveFontSiz.clamp(16, 18);
}

double getScaleFactor(BuildContext context) {
 double width = MediaQuery.sizeOf(context).width;
 if(width < 600){
  return width /400;
 } else if(width < 900){
  return width/700;
 } else{
  return width/1000;
 }
}
*/