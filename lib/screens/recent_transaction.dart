import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

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
        //leading: IconButton(onPressed: () {}, icon: const Icon(Icons.backpack)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  height: 24,
                  fit: BoxFit.cover,
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Recent Transaction',
                  style: TextStyle(
                    fontFamily: 'Alata',
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color(0xff5B628F),
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'Alata',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      color: const Color(0xff5B628F),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            offset: const Offset(1, 1))
                      ]),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'All',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            offset: const Offset(1, 1))
                      ]),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Income',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            offset: const Offset(1, 1))
                      ]),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Expense',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            const Text(
              'Today',
              style: TextStyle(
                fontFamily: 'Alata',
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Color(0xff5B628F),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 26),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/mail.svg',
                          height: 40,
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text('Payment'),
                        Text('Payment'),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
