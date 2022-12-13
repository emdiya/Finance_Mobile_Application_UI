import 'package:flutter/material.dart';
import 'package:profile_ui/data/profile_info.dart';
import 'package:profile_ui/models/profile_model/profile_model.dart';
import 'dart:io';

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
            child: profiledata.image.toLowerCase().startsWith('http')
                ? Image.network(
                    profiledata.image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )
                : ClipOval(
                    child: Image.file(
                    File(profiledata.image),
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ))),
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
