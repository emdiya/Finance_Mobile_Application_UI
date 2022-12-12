import 'package:freezed_annotation/freezed_annotation.dart';

part 'total_data.freezed.dart';
part 'total_data.g.dart';

@freezed
class TotalData with _$TotalData {
  factory TotalData({
    @Default(0) double sent,
    @Default(0) double received,
    @Default(0) double loan,
  }) = _TotalData;

  factory TotalData.fromJson(Map<String, dynamic> json) =>
      _$TotalDataFromJson(json);
}
