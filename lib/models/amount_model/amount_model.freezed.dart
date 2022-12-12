// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AmountModel _$AmountModelFromJson(Map<String, dynamic> json) {
  return _AmountModel.fromJson(json);
}

/// @nodoc
mixin _$AmountModel {
  String? get label => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmountModelCopyWith<AmountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountModelCopyWith<$Res> {
  factory $AmountModelCopyWith(
          AmountModel value, $Res Function(AmountModel) then) =
      _$AmountModelCopyWithImpl<$Res, AmountModel>;
  @useResult
  $Res call({String? label, double? amount});
}

/// @nodoc
class _$AmountModelCopyWithImpl<$Res, $Val extends AmountModel>
    implements $AmountModelCopyWith<$Res> {
  _$AmountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AmountModelCopyWith<$Res>
    implements $AmountModelCopyWith<$Res> {
  factory _$$_AmountModelCopyWith(
          _$_AmountModel value, $Res Function(_$_AmountModel) then) =
      __$$_AmountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? label, double? amount});
}

/// @nodoc
class __$$_AmountModelCopyWithImpl<$Res>
    extends _$AmountModelCopyWithImpl<$Res, _$_AmountModel>
    implements _$$_AmountModelCopyWith<$Res> {
  __$$_AmountModelCopyWithImpl(
      _$_AmountModel _value, $Res Function(_$_AmountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_AmountModel(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AmountModel implements _AmountModel {
  _$_AmountModel({required this.label, required this.amount});

  factory _$_AmountModel.fromJson(Map<String, dynamic> json) =>
      _$$_AmountModelFromJson(json);

  @override
  final String? label;
  @override
  final double? amount;

  @override
  String toString() {
    return 'AmountModel(label: $label, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmountModel &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmountModelCopyWith<_$_AmountModel> get copyWith =>
      __$$_AmountModelCopyWithImpl<_$_AmountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AmountModelToJson(
      this,
    );
  }
}

abstract class _AmountModel implements AmountModel {
  factory _AmountModel(
      {required final String? label,
      required final double? amount}) = _$_AmountModel;

  factory _AmountModel.fromJson(Map<String, dynamic> json) =
      _$_AmountModel.fromJson;

  @override
  String? get label;
  @override
  double? get amount;
  @override
  @JsonKey(ignore: true)
  _$$_AmountModelCopyWith<_$_AmountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
