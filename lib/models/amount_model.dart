class AmountData {
  double? amount;
  String? label;

  AmountData({
    this.amount,
    this.label,
  });
}

class TotalData {
  AmountData income = AmountData(amount: 8900, label: 'Income');
  AmountData expenes = AmountData(amount: 5500, label: 'Expenes');
  AmountData loan = AmountData(amount: 890, label: 'Loan');
}
