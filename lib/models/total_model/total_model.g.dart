// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TotalModel _$$_TotalModelFromJson(Map<String, dynamic> json) =>
    _$_TotalModel(
      income: AmountModel.fromJson(json['income'] as Map<String, dynamic>),
      sent: AmountModel.fromJson(json['sent'] as Map<String, dynamic>),
      loan: AmountModel.fromJson(json['loan'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TotalModelToJson(_$_TotalModel instance) =>
    <String, dynamic>{
      'income': instance.income,
      'sent': instance.sent,
      'loan': instance.loan,
    };
