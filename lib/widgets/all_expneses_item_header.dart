import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.img,  this.imgBackcolor,  this.imgColor});
final Color? imgBackcolor,imgColor;
final String img;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color:imgBackcolor ?? const Color(0xffFAFAFA) ,
            shape:const OvalBorder()
          ),
          child:Center(
            child: SvgPicture.asset(img,
            colorFilter: ColorFilter.mode(imgColor ??const Color(0xff4EB7F2), BlendMode.srcIn),
            )
            ) , 
        ),
        const Expanded(child: SizedBox()),  //== Spacer()
        Transform.rotate(
            angle: 3.14,
            child: Icon(Icons.arrow_back_ios_new_outlined,color:imgColor==null ? const Color(0xff064060) :Colors.white ,)
            )
      ],
    );
  }
}