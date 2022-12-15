// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:profile_ui/models/transaction_model/transaction_model.dart';
import 'package:profile_ui/screens/submit_screen.dart';

class TransactionDetail extends StatefulWidget {
  final TransactionModel transaction;
  final TransactionModel? transactionModel;
  const TransactionDetail({
    Key? key,
    required this.transaction,
    this.transactionModel,
  }) : super(key: key);

  @override
  State<TransactionDetail> createState() => _TransactionDetailState();
}

class _TransactionDetailState extends State<TransactionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5B628F),
      appBar: AppBar(
        title: const Text('Recieve'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffe9f0fb),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(0, 0))
                        ]),
                    alignment: Alignment.center,
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/${widget.transaction.logo}.svg',
                        fit: BoxFit.cover,
                        height: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                const Text(
                  '15 Dec 2022',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${widget.transaction.value?.round()}\$",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${widget.transaction.description}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 145,
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Privacy Policies',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.circle,
                                  size: 4,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "All transaction will be record by our system",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.circle,
                                  size: 4,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "All data was not share to any 3rd party side",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.circle,
                                  size: 4,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Please don not share your credential data",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.circle,
                                  size: 4,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Make sure your received all amount",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.circle,
                                  size: 4,
                                  color: Colors.black,
                                ),
                                const SizedBox(width: 10),
                                Row(
                                  children: [
                                    const Text(
                                      "Contact us ",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    const Text(
                                      "(+855) 143 45 67",
                                      style: TextStyle(
                                        color: Color(0xFF000EB4),
                                        fontSize: 12,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        FlutterPhoneDirectCaller.callNumber(
                                            '(+855) 143 45 67');
                                      },
                                      child: const Text('(+855) 143 45 67'),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          debugPrint("------------- ReTurn is Working...! -");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SubmitScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 58,
                          width: 160,
                          decoration: BoxDecoration(
                            color: const Color(0xFF3E4584),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Return',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.turn_right,
                                  color: Colors.white,
                                  size: 26,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint("------------- Done is Working...! -");
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 58,
                          width: 170,
                          decoration: BoxDecoration(
                            color: const Color(0xFF3E4584),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Done',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 26,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
