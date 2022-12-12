// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'total_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TotalData _$TotalDataFromJson(Map<String, dynamic> json) {
  return _TotalData.fromJson(json);
}

/// @nodoc
mixin _$TotalData {
  double get sent => throw _privateConstructorUsedError;
  double get received => throw _privateConstructorUsedError;
  double get loan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalDataCopyWith<TotalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalDataCopyWith<$Res> {
  factory $TotalDataCopyWith(TotalData value, $Res Function(TotalData) then) =
      _$TotalDataCopyWithImpl<$Res, TotalData>;
  @useResult
  $Res call({double sent, double received, double loan});
}

/// @nodoc
class _$TotalDataCopyWithImpl<$Res, $Val extends TotalData>
    implements $TotalDataCopyWith<$Res> {
  _$TotalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sent = null,
    Object? received = null,
    Object? loan = null,
  }) {
    return _then(_value.copyWith(
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as double,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as double,
      loan: null == loan
          ? _value.loan
          : loan // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TotalDataCopyWith<$Res> implements $TotalDataCopyWith<$Res> {
  factory _$$_TotalDataCopyWith(
          _$_TotalData value, $Res Function(_$_TotalData) then) =
      __$$_TotalDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double sent, double received, double loan});
}

/// @nodoc
class __$$_TotalDataCopyWithImpl<$Res>
    extends _$TotalDataCopyWithImpl<$Res, _$_TotalData>
    implements _$$_TotalDataCopyWith<$Res> {
  __$$_TotalDataCopyWithImpl(
      _$_TotalData _value, $Res Function(_$_TotalData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sent = null,
    Object? received = null,
    Object? loan = null,
  }) {
    return _then(_$_TotalData(
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as double,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as double,
      loan: null == loan
          ? _value.loan
          : loan // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TotalData implements _TotalData {
  _$_TotalData({this.sent = 0, this.received = 0, this.loan = 0});

  factory _$_TotalData.fromJson(Map<String, dynamic> json) =>
      _$$_TotalDataFromJson(json);

  @override
  @JsonKey()
  final double sent;
  @override
  @JsonKey()
  final double received;
  @override
  @JsonKey()
  final double loan;

  @override
  String toString() {
    return 'TotalData(sent: $sent, received: $received, loan: $loan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TotalData &&
            (identical(other.sent, sent) || other.sent == sent) &&
            (identical(other.received, received) ||
                other.received == received) &&
            (identical(other.loan, loan) || other.loan == loan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sent, received, loan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TotalDataCopyWith<_$_TotalData> get copyWith =>
      __$$_TotalDataCopyWithImpl<_$_TotalData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TotalDataToJson(
      this,
    );
  }
}

abstract class _TotalData implements TotalData {
  factory _TotalData(
      {final double sent,
      final double received,
      final double loan}) = _$_TotalData;

  factory _TotalData.fromJson(Map<String, dynamic> json) =
      _$_TotalData.fromJson;

  @override
  double get sent;
  @override
  double get received;
  @override
  double get loan;
  @override
  @JsonKey(ignore: true)
  _$$_TotalDataCopyWith<_$_TotalData> get copyWith =>
      throw _privateConstructorUsedError;
}
