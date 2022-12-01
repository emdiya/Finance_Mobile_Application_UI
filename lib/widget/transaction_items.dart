import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_ui/models/transaction_model.dart';

class TransactionItems extends StatelessWidget {
  final Transaction transaction;
  const TransactionItems({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Container(
          height: 80,
          width: 400,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(34),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(1, 2), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade50,
                  ),
                  alignment: Alignment.center,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/${transaction.logo}.svg',
                      fit: BoxFit.cover,
                      height: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${transaction.title}\n',
                        style: TextStyle(
                            color: Colors.lightBlue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      TextSpan(
                        text: transaction.description,
                        style: const TextStyle(color: Colors.grey).copyWith(
                          height: 1.5,
                          fontSize: 12,
                          shadows: [
                            const BoxShadow(
                              color: Colors.white,
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(2, 0.2), // cha
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            '\n${transaction.value!.isNegative ? '' : '+'}${transaction.value}\$ ',
                        style: TextStyle(
                          // color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: transaction.value!.isNegative
                              ? Colors.red
                              : Colors.lightBlue.shade900,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
