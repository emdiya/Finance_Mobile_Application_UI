import 'package:freezed_annotation/freezed_annotation.dart';

part 'amount_model.freezed.dart';
part 'amount_model.g.dart';

@freezed
class AmountModel with _$AmountModel {
  factory AmountModel({
    required String? label,
    required double? amount,
  }) = _AmountModel;

  factory AmountModel.fromJson(Map<String, dynamic> json) =>
      _$AmountModelFromJson(json);
}
