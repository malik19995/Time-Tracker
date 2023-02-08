// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryRecord _$CategoryRecordFromJson(Map<String, dynamic> json) {
  return _CategoryRecord.fromJson(json);
}

/// @nodoc
mixin _$CategoryRecord {
  String get title => throw _privateConstructorUsedError;
  Map<String, TimeFrame> get timeframes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryRecordCopyWith<CategoryRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryRecordCopyWith<$Res> {
  factory $CategoryRecordCopyWith(
          CategoryRecord value, $Res Function(CategoryRecord) then) =
      _$CategoryRecordCopyWithImpl<$Res, CategoryRecord>;
  @useResult
  $Res call({String title, Map<String, TimeFrame> timeframes});
}

/// @nodoc
class _$CategoryRecordCopyWithImpl<$Res, $Val extends CategoryRecord>
    implements $CategoryRecordCopyWith<$Res> {
  _$CategoryRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? timeframes = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timeframes: null == timeframes
          ? _value.timeframes
          : timeframes // ignore: cast_nullable_to_non_nullable
              as Map<String, TimeFrame>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryRecordCopyWith<$Res>
    implements $CategoryRecordCopyWith<$Res> {
  factory _$$_CategoryRecordCopyWith(
          _$_CategoryRecord value, $Res Function(_$_CategoryRecord) then) =
      __$$_CategoryRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, Map<String, TimeFrame> timeframes});
}

/// @nodoc
class __$$_CategoryRecordCopyWithImpl<$Res>
    extends _$CategoryRecordCopyWithImpl<$Res, _$_CategoryRecord>
    implements _$$_CategoryRecordCopyWith<$Res> {
  __$$_CategoryRecordCopyWithImpl(
      _$_CategoryRecord _value, $Res Function(_$_CategoryRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? timeframes = null,
  }) {
    return _then(_$_CategoryRecord(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timeframes: null == timeframes
          ? _value.timeframes
          : timeframes // ignore: cast_nullable_to_non_nullable
              as Map<String, TimeFrame>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryRecord implements _CategoryRecord {
  _$_CategoryRecord({required this.title, required this.timeframes});

  factory _$_CategoryRecord.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryRecordFromJson(json);

  @override
  final String title;
  @override
  final Map<String, TimeFrame> timeframes;

  @override
  String toString() {
    return 'CategoryRecord(title: $title, timeframes: $timeframes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryRecord &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.timeframes, timeframes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(timeframes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryRecordCopyWith<_$_CategoryRecord> get copyWith =>
      __$$_CategoryRecordCopyWithImpl<_$_CategoryRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryRecordToJson(
      this,
    );
  }
}

abstract class _CategoryRecord implements CategoryRecord {
  factory _CategoryRecord(
      {required final String title,
      required final Map<String, TimeFrame> timeframes}) = _$_CategoryRecord;

  factory _CategoryRecord.fromJson(Map<String, dynamic> json) =
      _$_CategoryRecord.fromJson;

  @override
  String get title;
  @override
  Map<String, TimeFrame> get timeframes;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryRecordCopyWith<_$_CategoryRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
