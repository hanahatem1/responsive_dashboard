import 'package:flutter/material.dart';
import 'package:responsive_project/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const Text('Quick Invoice',style: AppStyles.styleSemiBold20,),
        const Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration:const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFAFAFA)
            ),
            child:const  Icon(Icons.add,color: Color(0xff4EB7F2),),
        )
      ],
    );
  }
}