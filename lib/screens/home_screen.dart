// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_ui/data/profile_info.dart';
import 'package:profile_ui/data/transaction_data.dart';

import 'package:profile_ui/widget/custom_label.dart';
import 'package:profile_ui/widget/transaction_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 26, right: 26),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(1, 2), // changes position of shadow
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
                        style: TextStyle(
                          color: Colors.lightBlue.shade900,
                          fontSize: 20,
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
                          fontSize: 12,
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
                        const CustomLabel(value: "\$9800", label: "Income"),
                        Container(
                          color: Colors.grey,
                          width: 0.5,
                          height: 50,
                        ),
                        const CustomLabel(value: "\$5500", label: "Expenes"),
                        Container(
                          color: Colors.grey,
                          width: 0.5,
                          height: 50,
                        ),
                        const CustomLabel(value: "\$9800", label: "Loan"),
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
                    Text(
                      'Overview',
                      style: TextStyle(
                        color: Colors.lightBlue.shade900,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none_outlined),
                    )
                  ],
                ),
                Text(
                  'Sept 13, 2020',
                  style: TextStyle(
                    color: Colors.lightBlue.shade900,
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
            padding: const EdgeInsets.all(16),
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
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/add.svg',
                    fit: BoxFit.cover,
                    height: 30,
                    color: Colors.lightBlue.shade900,
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
