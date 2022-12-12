// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TotalData _$$_TotalDataFromJson(Map<String, dynamic> json) => _$_TotalData(
      sent: (json['sent'] as num?)?.toDouble() ?? 0,
      received: (json['received'] as num?)?.toDouble() ?? 0,
      loan: (json['loan'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_TotalDataToJson(_$_TotalData instance) =>
    <String, dynamic>{
      'sent': instance.sent,
      'received': instance.received,
      'loan': instance.loan,
    };
