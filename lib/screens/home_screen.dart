// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_ui/data/profile_info.dart';
import 'package:profile_ui/data/transaction_data.dart';
import 'package:profile_ui/models/amount_model.dart';
import 'package:profile_ui/screens/recent_transaction.dart';

import 'package:profile_ui/widget/custom_label.dart';
import 'package:profile_ui/widget/transaction_items.dart';

import 'submit_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe9f0fb),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 26,
                right: 26,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 10), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.short_text_outlined),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
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
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 22, left: 50, right: 50, bottom: 36),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomLabel(
                              value: "\$${TotalData().income.amount!.round()}",
                              label: "${TotalData().income.label}"),
                          Container(
                            color: Colors.grey,
                            width: 0.5,
                            height: 50,
                          ),
                          CustomLabel(
                              value: "\$${TotalData().expenes.amount!.round()}",
                              label: "${TotalData().expenes.label}"),
                          Container(
                            color: Colors.grey,
                            width: 0.5,
                            height: 50,
                          ),
                          CustomLabel(
                              value: "\$${TotalData().loan.amount!.round()}",
                              label: "${TotalData().loan.label}"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Overview',
                        style: TextStyle(
                          color: Color(0xff5B628F),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none_outlined),
                      )
                    ],
                  ),
                  const Text(
                    'Sept 13, 2020',
                    style: TextStyle(
                      color: Color(0xff5B628F),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                controller: controller,
                // reverse: true,/
                padding: EdgeInsets.zero,
                itemCount: transactionsData.length,
                itemBuilder: ((_, index) => TransactionItems(
                      transaction: transactionsData[index],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/home.svg',
                      fit: BoxFit.cover,
                      height: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const RecentTransactions();
                        }),
                      );
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/card.svg',
                      fit: BoxFit.cover,
                      height: 26,
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff5B628F),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const SubmitScreen();
                        })).then((value) {
                          setState(() {});
                          controller.animateTo(0,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear);
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                ElevatedButton(
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: const Text('Close'),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/dollar2.svg',
                      fit: BoxFit.cover,
                      height: 26,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/person.svg',
                      fit: BoxFit.cover,
                      height: 26,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
