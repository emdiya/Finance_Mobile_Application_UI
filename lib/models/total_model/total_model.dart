import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:profile_ui/models/amount_model/amount_model.dart';

part 'total_model.freezed.dart';
part 'total_model.g.dart';

@freezed
class TotalModel with _$TotalModel {
  factory TotalModel({
    required AmountModel income,
    required AmountModel sent,
    required AmountModel loan,
  }) = _TotalModel;

  factory TotalModel.fromJson(Map<String, dynamic> json) =>
      _$TotalModelFromJson(json);
}
