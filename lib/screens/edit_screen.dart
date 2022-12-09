import 'dart:io';

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../data/profile_info.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
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
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
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
                      Stack(
                        children: [
                          ClipOval(
                            child: Image.network(
                              'https://img.seadn.io/files/bbefba536cb4156606a4e01953bfecab.png?fit=max&w=1000',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            right: 20,
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 140,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(36),
                                        color: Colors.white,
                                      ),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Text(
                                            'Options Choose',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                                child: IconButton(
                                                  onPressed: () async {
                                                    try {
                                                      PickedFile? pickedFile;
                                                      pickedFile =
                                                          await ImagePicker()
                                                              .getImage(
                                                                  source:
                                                                      ImageSource
                                                                          .camera);
                                                      if (pickedFile != null) {
                                                        File imageFile = File(
                                                            pickedFile.path);
                                                      }
                                                    } catch (e) {
                                                      debugPrint('=====$e');
                                                    }
                                                  }, //() => pickImage(),
                                                  icon: const Icon(
                                                    Icons.camera_enhance,
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                                child: IconButton(
                                                  onPressed: () {
                                                    ImagePicker().getImage(
                                                        source: ImageSource
                                                            .gallery);
                                                  },
                                                  icon: const Icon(
                                                    Icons.image,
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                                debugPrint('========is work');
                              },
                              child: Icon(
                                Icons.camera_alt,
                                size: 20,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ),
                        ],
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
                  width: 320,
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
                    // validator: (v) =>
                    //     v == null || v.isEmpty ? 'Validated Description' : null,
                    // autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.scatter_plot,
                          color: Color(0xff5B628F),
                        ),
                        labelText: 'Position'),
                    // validator: (v) =>
                    //     v == null || v.isEmpty ? 'Validated Description' : null,
                    // autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      AnimatedSnackBar(
                        mobileSnackBarPosition: MobileSnackBarPosition.top,
                        duration: const Duration(milliseconds: 5500),
                        builder: ((context) {
                          return Container(
                            padding: const EdgeInsets.all(8),
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Center(
                              child: Text(
                                'Updated Successfully!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          );
                        }),
                      ).show(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color(0xff5B628F),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(5, 5),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'Update',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
