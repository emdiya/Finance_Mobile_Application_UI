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
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xff5B628F),
            fontWeight: FontWeight.w500,
            fontFamily: 'Alata',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          label ?? "",
          style: const TextStyle(
            fontSize: 11,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
