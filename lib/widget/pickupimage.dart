import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:profile_ui/data/profile_info.dart';

class PickUpImage extends StatefulWidget {
  const PickUpImage({
    Key? key,
  }) : super(key: key);

  @override
  State<PickUpImage> createState() => _PickUpImageState();
}

class _PickUpImageState extends State<PickUpImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipOval(
          child: !profiledata.image.toLowerCase().startsWith('http')
              ? Image.file(
                  File(profiledata.image),
                  fit: BoxFit.cover,
                  width: 120,
                  height: 120,
                )
              : Image.network(
                  profiledata.image,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
        ),
        Positioned(
          bottom: 10,
          right: 5,
          child: InkWell(
            onTap: () {
              Platform.isIOS
                  ? showCupertinoModalPopup(
                      context: context,
                      builder: (_) => CupertinoActionSheet(
                        actions: [
                          CupertinoActionSheetAction(
                            onPressed: () async {
                              try {
                                PickedFile? image;
                                image = await ImagePicker()
                                    .getImage(source: ImageSource.camera);
                                if (image != null) {
                                  // File imageTemp = File(imageSave);
                                  // this.image = imageTemp;
                                  setState(() {});
                                }
                              } on PlatformException catch (e) {
                                debugPrint('Failed to Pick image: $e');
                              }
                            }, //() => pickImage(),
                            child: const Text('Take Camera'),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () async {
                              try {
                                PickedFile? image;
                                image = await ImagePicker()
                                    .getImage(source: ImageSource.gallery);
                                if (image!.path != "") {
                                  imageSave = image.path;
                                  // this.image = File(imageSave);
                                  profiledata =
                                      profiledata.copyWith(image: imageSave);
                                  setState(() {});
                                }
                              } on PlatformException catch (e) {
                                debugPrint('Failed to Pick image: $e');
                              } finally {
                                Navigator.pop(_);
                              }
                            }, //() => pickImage(),
                            child: const Text('Gallery'),
                          ),
                        ],
                      ),
                    )
                  : showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 140,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Options Choose',
                                style: TextStyle(fontWeight: FontWeight.w500),
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
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: IconButton(
                                      onPressed: () async {
                                        try {
                                          PickedFile? image;
                                          image = await ImagePicker().getImage(
                                              source: ImageSource.camera);
                                          if (image != null) {
                                            // File imageTemp = File(image.path);

                                            // setState(
                                            //     () => this.image = imageTemp);
                                          }
                                        } on PlatformException catch (e) {
                                          debugPrint(
                                              'Failed to Pick image: $e');
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
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: IconButton(
                                      onPressed: () async {
                                        try {
                                          PickedFile? image;
                                          image = await ImagePicker().getImage(
                                              source: ImageSource.gallery);
                                          if (image != null) {
                                            // File imageTemp = File(image.path);

                                            // setState(
                                            //     () => this.image = imageTemp);
                                          }
                                        } on PlatformException catch (e) {
                                          debugPrint(
                                              'Failed to Pick image: $e');
                                        }
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
              debugPrint('-------------- Choose Image is working....');
            },
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 1,
                    color: Colors.blue,
                    offset: Offset(0, 0),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.camera_alt,
                size: 14,
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ),
      ],
    );
  }

  basename(String imagePath) {}
}
