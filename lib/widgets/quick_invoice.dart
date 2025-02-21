import 'package:flutter/material.dart';
import 'package:responsive_project/widgets/custom_background_container.dart';
import 'package:responsive_project/widgets/latest_transaction.dart';
import 'package:responsive_project/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomAllBackGroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction()
        ],
      )
      );
  }
}



