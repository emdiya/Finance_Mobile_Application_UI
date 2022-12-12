// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AmountModel _$$_AmountModelFromJson(Map<String, dynamic> json) =>
    _$_AmountModel(
      label: json['label'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AmountModelToJson(_$_AmountModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'amount': instance.amount,
    };
