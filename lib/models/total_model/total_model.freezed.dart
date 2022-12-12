// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'total_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TotalModel _$TotalModelFromJson(Map<String, dynamic> json) {
  return _TotalModel.fromJson(json);
}

/// @nodoc
mixin _$TotalModel {
  AmountModel get income => throw _privateConstructorUsedError;
  AmountModel get sent => throw _privateConstructorUsedError;
  AmountModel get loan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalModelCopyWith<TotalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalModelCopyWith<$Res> {
  factory $TotalModelCopyWith(
          TotalModel value, $Res Function(TotalModel) then) =
      _$TotalModelCopyWithImpl<$Res, TotalModel>;
  @useResult
  $Res call({AmountModel income, AmountModel sent, AmountModel loan});

  $AmountModelCopyWith<$Res> get income;
  $AmountModelCopyWith<$Res> get sent;
  $AmountModelCopyWith<$Res> get loan;
}

/// @nodoc
class _$TotalModelCopyWithImpl<$Res, $Val extends TotalModel>
    implements $TotalModelCopyWith<$Res> {
  _$TotalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
    Object? sent = null,
    Object? loan = null,
  }) {
    return _then(_value.copyWith(
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as AmountModel,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as AmountModel,
      loan: null == loan
          ? _value.loan
          : loan // ignore: cast_nullable_to_non_nullable
              as AmountModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountModelCopyWith<$Res> get income {
    return $AmountModelCopyWith<$Res>(_value.income, (value) {
      return _then(_value.copyWith(income: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountModelCopyWith<$Res> get sent {
    return $AmountModelCopyWith<$Res>(_value.sent, (value) {
      return _then(_value.copyWith(sent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountModelCopyWith<$Res> get loan {
    return $AmountModelCopyWith<$Res>(_value.loan, (value) {
      return _then(_value.copyWith(loan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TotalModelCopyWith<$Res>
    implements $TotalModelCopyWith<$Res> {
  factory _$$_TotalModelCopyWith(
          _$_TotalModel value, $Res Function(_$_TotalModel) then) =
      __$$_TotalModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AmountModel income, AmountModel sent, AmountModel loan});

  @override
  $AmountModelCopyWith<$Res> get income;
  @override
  $AmountModelCopyWith<$Res> get sent;
  @override
  $AmountModelCopyWith<$Res> get loan;
}

/// @nodoc
class __$$_TotalModelCopyWithImpl<$Res>
    extends _$TotalModelCopyWithImpl<$Res, _$_TotalModel>
    implements _$$_TotalModelCopyWith<$Res> {
  __$$_TotalModelCopyWithImpl(
      _$_TotalModel _value, $Res Function(_$_TotalModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
    Object? sent = null,
    Object? loan = null,
  }) {
    return _then(_$_TotalModel(
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as AmountModel,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as AmountModel,
      loan: null == loan
          ? _value.loan
          : loan // ignore: cast_nullable_to_non_nullable
              as AmountModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TotalModel implements _TotalModel {
  _$_TotalModel({required this.income, required this.sent, required this.loan});

  factory _$_TotalModel.fromJson(Map<String, dynamic> json) =>
      _$$_TotalModelFromJson(json);

  @override
  final AmountModel income;
  @override
  final AmountModel sent;
  @override
  final AmountModel loan;

  @override
  String toString() {
    return 'TotalModel(income: $income, sent: $sent, loan: $loan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TotalModel &&
            (identical(other.income, income) || other.income == income) &&
            (identical(other.sent, sent) || other.sent == sent) &&
            (identical(other.loan, loan) || other.loan == loan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, income, sent, loan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TotalModelCopyWith<_$_TotalModel> get copyWith =>
      __$$_TotalModelCopyWithImpl<_$_TotalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TotalModelToJson(
      this,
    );
  }
}

abstract class _TotalModel implements TotalModel {
  factory _TotalModel(
      {required final AmountModel income,
      required final AmountModel sent,
      required final AmountModel loan}) = _$_TotalModel;

  factory _TotalModel.fromJson(Map<String, dynamic> json) =
      _$_TotalModel.fromJson;

  @override
  AmountModel get income;
  @override
  AmountModel get sent;
  @override
  AmountModel get loan;
  @override
  @JsonKey(ignore: true)
  _$$_TotalModelCopyWith<_$_TotalModel> get copyWith =>
      throw _privateConstructorUsedError;
}
