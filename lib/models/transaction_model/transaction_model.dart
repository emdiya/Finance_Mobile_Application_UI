import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  factory TransactionModel({
    final String? logo,
    final String? title,
    final String? description,
    final double? value,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
