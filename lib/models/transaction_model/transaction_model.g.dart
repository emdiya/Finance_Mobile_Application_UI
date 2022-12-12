// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionModel _$$_TransactionModelFromJson(Map<String, dynamic> json) =>
    _$_TransactionModel(
      logo: json['logo'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TransactionModelToJson(_$_TransactionModel instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'title': instance.title,
      'description': instance.description,
      'value': instance.value,
    };
