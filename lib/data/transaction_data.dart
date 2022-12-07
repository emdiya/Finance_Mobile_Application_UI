import '../models/transaction_model.dart';

Totaldata totaldata = Totaldata();

final transactionsData = [
  Transaction(
    logo: 'up',
    title: 'Sent',
    description: 'Sending Payment to Clients',
    value: 150,
  ),
  Transaction(
    logo: 'down',
    title: 'Receive',
    description: 'Receiving Salary from Company',
    value: 250,
  ),
  Transaction(
    logo: 'dollar',
    title: 'Loan',
    description: 'Loan for the  Car',
    value: 400,
  ),
  Transaction(
    logo: 'dollar',
    title: 'Sent',
    description: 'Sent to Diyas',
    value: 450,
  ),
];

void sumAmount() {
  double sumSent = 0;
  double sumReceive = 0;
  double sumLoan = 0;

  transactionsData.map((e) {
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

  totaldata = Totaldata(loan: sumLoan, received: sumReceive, sent: sumSent);
}
