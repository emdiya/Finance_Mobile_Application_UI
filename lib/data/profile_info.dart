import 'package:profile_ui/models/amount_model/amount_model.dart';
import 'package:profile_ui/models/profile_model/profile_model.dart';
import 'package:profile_ui/models/total_model/total_model.dart';

ProfileModel profiledata = ProfileModel(
    name: 'Em Diya',
    position: "Flutter Developer",
    image:
        'https://img.seadn.io/files/bbefba536cb4156606a4e01953bfecab.png?fit=max&w=1000');

TotalModel totalModel = TotalModel(
  income: AmountModel(amount: 8900, label: 'Receive'),
  sent: AmountModel(amount: 5500, label: 'Sent'),
  loan: AmountModel(amount: 890, label: 'Loan'),
);

//old
// AmountModel income = AmountModel(amount: 8900, label: 'Receive');
// AmountModel expenes = AmountModel(amount: 5500, label: 'Sent');
// AmountModel loan = AmountModel(amount: 890, label: 'Loan');

String imageSave = '';
