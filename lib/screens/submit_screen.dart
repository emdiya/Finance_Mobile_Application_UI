import 'package:flutter/material.dart';
import 'package:profile_ui/data/transaction_data.dart';
import 'package:profile_ui/models/transaction_model.dart';

class SubmitScreen extends StatefulWidget {
  const SubmitScreen({super.key});

  @override
  State<SubmitScreen> createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  final description = TextEditingController();
  final value = TextEditingController();
  bool validateDescription = false;
  bool validateValue = false;
  final checkbox = ['Sent', 'Recieve', 'Loan'];
  String selectedValue = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xff5B628F),
        ),
        title: const Text(
          'Submit Screen',
          style: TextStyle(
            color: Color(0xff5B628F),
            fontFamily: 'Alata',
            fontWeight: FontWeight.w900,
            fontSize: 22,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xffe9f0fb),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              //
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: checkbox
                    .map((e) => GestureDetector(
                          onTap: () {
                            selectedValue = e;
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Icon(selectedValue == e
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank_outlined),
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
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.mail,
                        color: Colors.blue,
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

                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.monetization_on,
                        color: Colors.blue,
                      ),
                      labelText: 'Amounts'),
                  controller: value,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              GestureDetector(
                onTap: () {
                  // required des and amount

                  if (selectedValue.isNotEmpty &&
                      description.text.isNotEmpty &&
                      value.text.isNotEmpty) {
                    _formKey.currentState?.validate();

                    final toNum = double.parse(value.text);
                    transactionsData.add(Transaction(
                      title: selectedValue,
                      description: description.text,
                      value: toNum,
                      logo: selectedValue == 'Sent'
                          ? 'up'
                          : selectedValue == 'Recieve'
                              ? 'down'
                              : 'dollar',
                    ));

                    Navigator.pop(context);
                  } else {
                    _formKey.currentState?.validate();
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text('Valid')));
                  }
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
                      'Clear',
                      style: TextStyle(
                        color: Colors.white,
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
    );
  }
}
