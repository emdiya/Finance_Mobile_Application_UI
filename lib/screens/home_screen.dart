// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_ui/data/profile_info.dart';
import 'package:profile_ui/data/transaction_data.dart';
import 'package:profile_ui/models/transaction_model/transaction_model.dart';
import 'package:profile_ui/screens/recent_transaction.dart';
import 'package:profile_ui/screens/sent_amount_screen.dart';
import 'package:profile_ui/screens/transaction_detail.dart';
import 'package:profile_ui/widget/custom_amount_label.dart';
import 'package:profile_ui/widget/custom_profile.dart';
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
  TransactionModel transactionModel = TransactionModel();

  var selectItem = '';

  @override
  void initState() {
    sumAmount();
    super.initState();
  }

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
                top: 20,
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
                          PopupMenuButton(
                            iconSize: 20,
                            elevation: 1,
                            splashRadius: 1,
                            color: const Color(0xffe9f0fb),
                            position: PopupMenuPosition.under,
                            offset: const Offset(5, -5),
                            icon: const Icon(Icons.more_vert_outlined),
                            onSelected: (value) {
                              setState(() {
                                selectItem = value.toString();
                              });
                              Navigator.pushNamed(context, value.toString())
                                  .then((value) {
                                setState(() {
                                  debugPrint('Pop backs');
                                });
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            itemBuilder: (BuildContext context) {
                              return [
                                PopupMenuItem(
                                  value: '/edit_screen',
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.edit_outlined,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Edit',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                PopupMenuItem(
                                  value: '/about',
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.info_outlined,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Search',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                PopupMenuItem(
                                  value: '/about',
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.search,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'About',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ];
                            },
                          ),
                        ],
                      ),
                    ),
                    CutomProfile(
                      pf: profiledata,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 22, left: 50, right: 50, bottom: 36),
                      child: CustomAmountLabel(
                        totalModel: totalModel,
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
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                controller: controller,
                // reverse: true,/
                padding: EdgeInsets.zero,
                itemCount: transactionDataList.length,
                itemBuilder: ((_, index) => GestureDetector(
                      onTap: () {
                        debugPrint(
                            '-------------- Transaction Detail is working...! ');

                        if (transactionDataList[index].title?.toLowerCase() ==
                            'receive') {
                          debugPrint("-------- Receive -");
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return TransactionDetail(
                                transaction: transactionDataList[index],
                              );
                            }),
                          );
                        } else if (transactionDataList[index]
                                .title
                                ?.toLowerCase() ==
                            'sent') {
                          debugPrint("-------- Sent -");
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return SentScreenUI(
                                transaction: transactionDataList[index],
                              );
                            }),
                          );
                        } else {
                          debugPrint('------- no feature -');
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
                                    Container(
                                      height: 4,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff595959),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 48,
                                    ),
                                    SvgPicture.asset(
                                      'assets/svg/logo_oop.svg',
                                      height: 198.68,
                                      width: 323,
                                    ),
                                    const SizedBox(
                                      height: 36,
                                    ),
                                    const Text(
                                      'Oops !',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'This Feature Under Maintainace',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }
                      },
                      child: TransactionItems(
                        transaction: transactionDataList[index],
                      ),
                    )),

                // Detail Screen All
                // itemBuilder: (context, index) {
                //   var currentItems = transactionDataList[index];
                //   return GestureDetector(
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => TransactionDetail(
                //             transactionModel: currentItems,
                //           ),
                //         ),
                //       );
                //     },
                //     child: TransactionItems(
                //       transaction: transactionDataList[index],
                //     ),
                //   );
                // },
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
