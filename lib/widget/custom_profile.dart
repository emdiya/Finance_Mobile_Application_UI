import 'package:flutter/material.dart';
import 'package:profile_ui/models/profile_model/profile_model.dart';

class CutomProfile extends StatelessWidget {
  final ProfileModel pf;
  const CutomProfile({
    Key? key,
    required this.pf,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.network(
            'https://img.seadn.io/files/bbefba536cb4156606a4e01953bfecab.png?fit=max&w=1000',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          pf.name,
          style: const TextStyle(
            color: Color(0xff5B628F),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Alata',
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          pf.position,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Alata',
          ),
        ),
      ],
    );
  }
}
