import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:profile_ui/models/profile_model/profile_model.dart';

import '../data/profile_info.dart';
import '../widget/pickupimage.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  String newname = '';
  String newposition = '';
  ProfileModel pf = ProfileModel(name: '', position: '', image: '');
  @override
  void initState() {
    debugPrint("test new postion -------------- $newposition");
    pf = profiledata;
    newname = profiledata.name;
    newposition = profiledata.position;

    super.initState();
  }

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
          'Update Profile',
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
                    children: const [
                      PickUpImage(),
                      SizedBox(
                        height: 12,
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
                    onChanged: (value) {
                      setState(() {
                        pf = pf.copyWith(name: value);
                        newname = value;
                        debugPrint('new Name = $newname');
                      });
                    },
                    initialValue: profiledata.name,
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
                    onChanged: (value) {
                      setState(() {
                        pf = pf.copyWith(position: value);
                        newposition = value;
                        debugPrint('new position = $newposition');
                      });
                    },
                    initialValue: profiledata.position,
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
                    onTap: () async {
                      debugPrint('--------------- $newname');
                      debugPrint('--------------- $newposition');

                      if (pf != profiledata) {
                        debugPrint("------------ Update - Infomation");
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

                        setState(() {
                          profiledata = profiledata.copyWith(
                              name: pf.name,
                              position: pf.position,
                              image: imageSave);
                          debugPrint(
                              "-------Update Image - ${profiledata.image}");
                          Navigator.pop(context);
                        });

                        //Storedata.newposition = newposition;

                      } else {
                        debugPrint('------------------ No Update - ');
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        color: profiledata.name != pf.name
                            ? const Color(0xff5B628F)
                            : profiledata.position != pf.position
                                ? const Color(0xff5B628F)
                                : const Color(0xff5B628F).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(5, 5),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Update',
                          style: TextStyle(
                            color: profiledata.name != pf.name
                                ? Colors.white
                                : profiledata.position != pf.position
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.5),
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
