import 'package:profile_ui/models/total_data/total_data.dart';
import 'package:profile_ui/models/transaction_model/transaction_model.dart';

TotalData totalData = TotalData();

final transactionDataList = [
  TransactionModel(
    logo: 'up',
    title: 'Sent',
    description: 'Sending Payment to Clients',
    value: 150,
  ),
  TransactionModel(
    logo: 'down',
    title: 'Receive',
    description: 'Receiving Salary from Company',
    value: 250,
  ),
  TransactionModel(
    logo: 'dollar',
    title: 'Loan',
    description: 'Loan for the  Car',
    value: 400,
  ),
  TransactionModel(
    logo: 'dollar',
    title: 'Sent',
    description: 'Sent to Diya',
    value: 750,
  ),
];

/// SumAmount
void sumAmount() {
  double sumSent = 0;
  double sumReceive = 0;
  double sumLoan = 0;

  transactionDataList.map((e) {
    if (e.title?.toLowerCase() == 'sent') {
      sumSent = sumSent + e.value!;
    }
    if (e.title?.toLowerCase() == 'receive') {
      sumReceive = sumReceive + e.value!;
    }
    if (e.title?.toLowerCase() == 'loan') {
      sumLoan = sumLoan + e.value!;
    }
  }).toList();

  totalData = TotalData(loan: sumLoan, received: sumReceive, sent: sumSent);
}
