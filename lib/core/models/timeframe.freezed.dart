// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timeframe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeFrame _$TimeFrameFromJson(Map<String, dynamic> json) {
  return _TimeFrame.fromJson(json);
}

/// @nodoc
mixin _$TimeFrame {
  int get current => throw _privateConstructorUsedError;
  set current(int value) => throw _privateConstructorUsedError;
  int get previous => throw _privateConstructorUsedError;
  set previous(int value) => throw _privateConstructorUsedError;
  int? get preprevious => throw _privateConstructorUsedError;
  set preprevious(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeFrameCopyWith<TimeFrame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeFrameCopyWith<$Res> {
  factory $TimeFrameCopyWith(TimeFrame value, $Res Function(TimeFrame) then) =
      _$TimeFrameCopyWithImpl<$Res, TimeFrame>;
  @useResult
  $Res call({int current, int previous, int? preprevious});
}

/// @nodoc
class _$TimeFrameCopyWithImpl<$Res, $Val extends TimeFrame>
    implements $TimeFrameCopyWith<$Res> {
  _$TimeFrameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? previous = null,
    Object? preprevious = freezed,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      previous: null == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as int,
      preprevious: freezed == preprevious
          ? _value.preprevious
          : preprevious // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeFrameCopyWith<$Res> implements $TimeFrameCopyWith<$Res> {
  factory _$$_TimeFrameCopyWith(
          _$_TimeFrame value, $Res Function(_$_TimeFrame) then) =
      __$$_TimeFrameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current, int previous, int? preprevious});
}

/// @nodoc
class __$$_TimeFrameCopyWithImpl<$Res>
    extends _$TimeFrameCopyWithImpl<$Res, _$_TimeFrame>
    implements _$$_TimeFrameCopyWith<$Res> {
  __$$_TimeFrameCopyWithImpl(
      _$_TimeFrame _value, $Res Function(_$_TimeFrame) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? previous = null,
    Object? preprevious = freezed,
  }) {
    return _then(_$_TimeFrame(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      previous: null == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as int,
      preprevious: freezed == preprevious
          ? _value.preprevious
          : preprevious // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeFrame implements _TimeFrame {
  _$_TimeFrame(
      {required this.current, required this.previous, this.preprevious});

  factory _$_TimeFrame.fromJson(Map<String, dynamic> json) =>
      _$$_TimeFrameFromJson(json);

  @override
  int current;
  @override
  int previous;
  @override
  int? preprevious;

  @override
  String toString() {
    return 'TimeFrame(current: $current, previous: $previous, preprevious: $preprevious)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeFrameCopyWith<_$_TimeFrame> get copyWith =>
      __$$_TimeFrameCopyWithImpl<_$_TimeFrame>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeFrameToJson(
      this,
    );
  }
}

abstract class _TimeFrame implements TimeFrame {
  factory _TimeFrame(
      {required int current,
      required int previous,
      int? preprevious}) = _$_TimeFrame;

  factory _TimeFrame.fromJson(Map<String, dynamic> json) =
      _$_TimeFrame.fromJson;

  @override
  int get current;
  set current(int value);
  @override
  int get previous;
  set previous(int value);
  @override
  int? get preprevious;
  set preprevious(int? value);
  @override
  @JsonKey(ignore: true)
  _$$_TimeFrameCopyWith<_$_TimeFrame> get copyWith =>
      throw _privateConstructorUsedError;
}
