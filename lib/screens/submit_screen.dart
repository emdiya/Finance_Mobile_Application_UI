import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:profile_ui/data/transaction_data.dart';
import 'package:profile_ui/models/transaction_model/transaction_model.dart';
import 'package:profile_ui/screens/home_screen.dart';

class SubmitScreen extends StatefulWidget {
  final String? choice;
  const SubmitScreen({
    Key? key,
    this.choice,
  }) : super(key: key);

  @override
  State<SubmitScreen> createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  final description = TextEditingController();
  final value = TextEditingController();
  bool validateDescription = false;
  bool validateValue = false;
  final checkbox = ['Sent', 'Receive', 'Loan'];
  String selectedValue = '';
  String titleDescription = '';
  String titlevalue = '';

  @override
  void initState() {
    selectedValue = widget.choice ?? '';
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Color(0xff5B628F),
        ),
        title: const Text(
          'Submit Screen',
          style: TextStyle(
            color: Color(0xff5B628F),
            fontWeight: FontWeight.w900,
            fontSize: 22,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xffe9f0fb),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 100),
                SvgPicture.asset(
                  'assets/svg/logo.svg',
                  height: 100,
                ),
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: checkbox
                      .map((e) => GestureDetector(
                            onTap: () {
                              debugPrint(
                                  "----------Choice select = ${widget.choice}");
                              setState(() {
                                if (widget.choice == null) {
                                  if (selectedValue != e) {
                                    selectedValue = e;
                                    debugPrint('-------------- Select = $e');
                                  } else {
                                    selectedValue = '';
                                  }
                                }
                              });
                              setState(() {});
                            },
                            child: Row(
                              children: [
                                (widget.choice ?? selectedValue) == e
                                    ? SvgPicture.asset(
                                        'assets/icons/round_tick.svg',
                                        height: 20,
                                        width: 20,
                                      )
                                    : SvgPicture.asset('assets/icons/round.svg',
                                        height: 20, width: 20),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(e),
                              ],
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 14,
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
                    onChanged: (value) {
                      titleDescription = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.mail,
                          color: Color(0xff5B628F),
                        ),
                        labelText: 'Description'),
                    controller: description,
                    validator: (v) =>
                        v == null || v.isEmpty ? 'Validated Description' : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  // height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    validator: (v) =>
                        v == null || v.isEmpty ? 'Validated Amounts' : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    //obscureText: true,
                    onChanged: (value) {
                      titlevalue = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.monetization_on,
                          color: Color(0xff5B628F),
                        ),
                        labelText: 'Amounts'),
                    controller: value,
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                GestureDetector(
                  onTap: () {
                    if (selectedValue.isNotEmpty &&
                        description.text.isNotEmpty &&
                        value.text.isNotEmpty) {
                      _formKey.currentState?.validate();

                      final toNum = double.parse(value.text);

                      transactionDataList.insert(
                        0,
                        TransactionModel(
                          title: selectedValue,
                          description: description.text,
                          value: toNum,
                          logo: selectedValue == 'Sent'
                              ? 'up'
                              : selectedValue == 'Receive'
                                  ? 'down'
                                  : 'dollar',
                        ),
                      );
                      sumAmount();
                      AnimatedSnackBar(
                        mobileSnackBarPosition: MobileSnackBarPosition.top,
                        duration: const Duration(milliseconds: 1500),
                        builder: ((context) {
                          return Container(
                            padding: const EdgeInsets.all(8),
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                'You sent Successfully!',
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
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const HomeScreen();
                            },
                          ),
                        );
                      });
                    } else {
                      _formKey.currentState?.validate();
                      AnimatedSnackBar(
                        mobileSnackBarPosition: MobileSnackBarPosition.bottom,
                        duration: const Duration(milliseconds: 5500),
                        builder: ((context) {
                          return Container(
                            padding: const EdgeInsets.all(8),
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Center(
                              child: Text(
                                'Wrong Please Check Again!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          );
                        }),
                      ).show(context);
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      color: selectedValue != '' &&
                              description.text.isNotEmpty &&
                              value.text.isNotEmpty
                          ? const Color(0xff5B628F)
                          : const Color(0xff5B628F).withOpacity(
                              0.5), // const Color(0xff5B628F).withOpacity(0.5),
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
                        'Submit',
                        style: TextStyle(
                          color: selectedValue != '' &&
                                  description.text.isNotEmpty &&
                                  value.text.isNotEmpty
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
