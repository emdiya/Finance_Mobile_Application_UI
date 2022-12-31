import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_ui/models/transaction_model/transaction_model.dart';

class SentScreenUI extends StatelessWidget {
  final TransactionModel transaction;

  const SentScreenUI({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      appBar: AppBar(
        title: const Text('Sent'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    24,
                  ),
                  topRight: Radius.circular(24),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 66, right: 66, top: 66),
                    child: Center(
                      child: Container(
                        height: 326,
                        width: 296,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [
                              0.1,
                              0.9,
                            ],
                            colors: [
                              Color(0xff2E4780),
                              Color(0xff253865),
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 42,
                            ),
                            Container(
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
                              child: SvgPicture.asset(
                                'assets/icons/${transaction.logo}.svg',
                                fit: BoxFit.cover,
                                height: 24,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            const Text(
                              '05 May 2022',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "${transaction.value?.round()}\$",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "${transaction.description}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 43,
                            width: 58,
                            decoration: BoxDecoration(
                              color: const Color(0xffD9E5FF),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: const Icon(
                              Icons.arrow_downward,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Save')
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 43,
                            width: 58,
                            decoration: BoxDecoration(
                              color: const Color(0xffD9E5FF),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: const Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Share')
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 140,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 58,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff3E4584),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          'Repeat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
