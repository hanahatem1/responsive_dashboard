import 'package:flutter/material.dart';
import 'package:responsive_project/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(12),
      decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(8),
         border: Border.all(color:const Color(0xffF1F1F1))
      ),
      child: Row(
        children: [
          const Text('Monthly',style:AppStyles.styleMedium16,),
          const SizedBox(width: 18),
          Transform.rotate(
            angle: -1.571,
            child:const Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xff064060),)
            )
        ],
      ),
    );
  }
}