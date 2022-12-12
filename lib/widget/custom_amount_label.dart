// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:profile_ui/data/transaction_data.dart';

import 'package:profile_ui/models/total_model/total_model.dart';
import 'package:profile_ui/widget/custom_label.dart';

class CustomAmountLabel extends StatelessWidget {
  final TotalModel totalModel;
  const CustomAmountLabel({
    Key? key,
    required this.totalModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomLabel(
            value: "\$${totalData.received.round()}",
            label: "${totalModel.income.label}"),
        Container(
          color: Colors.grey,
          width: 0.5,
          height: 50,
        ),
        CustomLabel(
            value: "\$${totalData.sent.round()}",
            label: "${totalModel.sent.label}"),
        Container(
          color: Colors.grey,
          width: 0.5,
          height: 50,
        ),
        CustomLabel(
          value: "\$${totalData.loan.round()}",
          label: "${totalModel.loan.label}",
        ),
      ],
    );
  }
}
