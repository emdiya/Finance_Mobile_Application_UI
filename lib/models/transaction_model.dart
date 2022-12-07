class Transaction {
  final String? logo;
  final String? title;
  final String? description;
  final double? value;

  Transaction({
    this.logo,
    this.title,
    this.description,
    this.value,
  });
}

class Totaldata {
  double sent;
  double received;
  double loan;

  Totaldata({
    this.sent = 0,
    this.received = 0,
    this.loan = 0,
  });
}
