// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_ui/data/profile_info.dart';
import 'package:profile_ui/data/transaction_data.dart';
import 'package:profile_ui/models/amount_model.dart';

import 'package:profile_ui/widget/custom_label.dart';
import 'package:profile_ui/widget/transaction_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe9f0fb),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 26, right: 26),
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
                      offset: const Offset(0, 10), // changes position of shadow
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
                  const SizedBox(
                    height: 10,
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
                        height: 18,
                      ),
                      Text(
                        persondata.name ?? '',
                        style: const TextStyle(
                          color: Color(0xff5B628F),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        persondata.position ?? '',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40, left: 50, right: 50, bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomLabel(
                            value: "\$${TotalData().income.amount}",
                            label: "${TotalData().income.label}"),
                        Container(
                          color: Colors.grey,
                          width: 0.5,
                          height: 50,
                        ),
                        CustomLabel(
                            value: "\$${TotalData().expenes.amount}",
                            label: "${TotalData().expenes.label}"),
                        Container(
                          color: Colors.grey,
                          width: 0.5,
                          height: 50,
                        ),
                        CustomLabel(
                            value: "\$${TotalData().loan.amount}",
                            label: "${TotalData().loan.label}"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      'Overview',
                      style: TextStyle(
                        color: Color(0xff5B628F),
                        fontSize: 23,
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
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: transactionsData.length,
              itemBuilder: ((_, index) => TransactionItems(
                    transaction: transactionsData[index],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
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
                  onPressed: () {},
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
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
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
    );
  }
}
