import 'package:flutter/material.dart';

import '../data/profile_info.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe9f0fb),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xff5B628F),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Update Information',
          style: TextStyle(
            color: Color(0xff5B628F),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                ),
                child: Column(
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
                      persondata.name ?? '',
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
                      persondata.position ?? '',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Alata',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.person,
                        color: Color(0xff5B628F),
                      ),
                      labelText: 'Username'),
                  validator: (v) =>
                      v == null || v.isEmpty ? 'Validated Description' : null,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
