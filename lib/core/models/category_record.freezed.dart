// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryRecord {

 String get title; Map<String, TimeFrame> get timeframes;
/// Create a copy of CategoryRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryRecordCopyWith<CategoryRecord> get copyWith => _$CategoryRecordCopyWithImpl<CategoryRecord>(this as CategoryRecord, _$identity);

  /// Serializes this CategoryRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryRecord&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.timeframes, timeframes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(timeframes));

@override
String toString() {
  return 'CategoryRecord(title: $title, timeframes: $timeframes)';
}


}

/// @nodoc
abstract mixin class $CategoryRecordCopyWith<$Res>  {
  factory $CategoryRecordCopyWith(CategoryRecord value, $Res Function(CategoryRecord) _then) = _$CategoryRecordCopyWithImpl;
@useResult
$Res call({
 String title, Map<String, TimeFrame> timeframes
});




}
/// @nodoc
class _$CategoryRecordCopyWithImpl<$Res>
    implements $CategoryRecordCopyWith<$Res> {
  _$CategoryRecordCopyWithImpl(this._self, this._then);

  final CategoryRecord _self;
  final $Res Function(CategoryRecord) _then;

/// Create a copy of CategoryRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? timeframes = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,timeframes: null == timeframes ? _self.timeframes : timeframes // ignore: cast_nullable_to_non_nullable
as Map<String, TimeFrame>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryRecord].
extension CategoryRecordPatterns on CategoryRecord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryRecord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryRecord value)  $default,){
final _that = this;
switch (_that) {
case _CategoryRecord():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryRecord value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryRecord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  Map<String, TimeFrame> timeframes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryRecord() when $default != null:
return $default(_that.title,_that.timeframes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  Map<String, TimeFrame> timeframes)  $default,) {final _that = this;
switch (_that) {
case _CategoryRecord():
return $default(_that.title,_that.timeframes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  Map<String, TimeFrame> timeframes)?  $default,) {final _that = this;
switch (_that) {
case _CategoryRecord() when $default != null:
return $default(_that.title,_that.timeframes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryRecord implements CategoryRecord {
   _CategoryRecord({required this.title, required this.timeframes});
  factory _CategoryRecord.fromJson(Map<String, dynamic> json) => _$CategoryRecordFromJson(json);

@override final  String title;
@override final  Map<String, TimeFrame> timeframes;

/// Create a copy of CategoryRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryRecordCopyWith<_CategoryRecord> get copyWith => __$CategoryRecordCopyWithImpl<_CategoryRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryRecord&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.timeframes, timeframes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(timeframes));

@override
String toString() {
  return 'CategoryRecord(title: $title, timeframes: $timeframes)';
}


}

/// @nodoc
abstract mixin class _$CategoryRecordCopyWith<$Res> implements $CategoryRecordCopyWith<$Res> {
  factory _$CategoryRecordCopyWith(_CategoryRecord value, $Res Function(_CategoryRecord) _then) = __$CategoryRecordCopyWithImpl;
@override @useResult
$Res call({
 String title, Map<String, TimeFrame> timeframes
});




}
/// @nodoc
class __$CategoryRecordCopyWithImpl<$Res>
    implements _$CategoryRecordCopyWith<$Res> {
  __$CategoryRecordCopyWithImpl(this._self, this._then);

  final _CategoryRecord _self;
  final $Res Function(_CategoryRecord) _then;

/// Create a copy of CategoryRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? timeframes = null,}) {
  return _then(_CategoryRecord(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,timeframes: null == timeframes ? _self.timeframes : timeframes // ignore: cast_nullable_to_non_nullable
as Map<String, TimeFrame>,
  ));
}


}

// dart format on
