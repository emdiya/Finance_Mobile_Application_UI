import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  final String? value;
  final String? label;
  const CustomLabel({super.key, this.value, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value ?? "",
          style: TextStyle(
            fontSize: 16,
            color: Colors.lightBlue.shade900,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          label ?? "",
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
