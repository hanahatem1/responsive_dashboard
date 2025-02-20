import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.img});

final String img;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color:Color(0xffFAFAFA) ,
            shape: OvalBorder()
          ),
          child:Center(child: SvgPicture.asset(img)) , 
        ),
        Expanded(child: SizedBox()),  //== Spacer()
        Transform.rotate(
            angle: 3.14,
            child: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xff064060),)
            )
      ],
    );
  }
}