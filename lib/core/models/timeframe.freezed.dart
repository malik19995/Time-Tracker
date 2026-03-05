// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeframe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimeFrame {

 int get current; set current(int value); int get previous; set previous(int value); int? get preprevious; set preprevious(int? value);
/// Create a copy of TimeFrame
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeFrameCopyWith<TimeFrame> get copyWith => _$TimeFrameCopyWithImpl<TimeFrame>(this as TimeFrame, _$identity);

  /// Serializes this TimeFrame to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'TimeFrame(current: $current, previous: $previous, preprevious: $preprevious)';
}


}

/// @nodoc
abstract mixin class $TimeFrameCopyWith<$Res>  {
  factory $TimeFrameCopyWith(TimeFrame value, $Res Function(TimeFrame) _then) = _$TimeFrameCopyWithImpl;
@useResult
$Res call({
 int current, int previous, int? preprevious
});




}
/// @nodoc
class _$TimeFrameCopyWithImpl<$Res>
    implements $TimeFrameCopyWith<$Res> {
  _$TimeFrameCopyWithImpl(this._self, this._then);

  final TimeFrame _self;
  final $Res Function(TimeFrame) _then;

/// Create a copy of TimeFrame
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? previous = null,Object? preprevious = freezed,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,previous: null == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as int,preprevious: freezed == preprevious ? _self.preprevious : preprevious // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeFrame].
extension TimeFramePatterns on TimeFrame {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeFrame value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeFrame() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeFrame value)  $default,){
final _that = this;
switch (_that) {
case _TimeFrame():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeFrame value)?  $default,){
final _that = this;
switch (_that) {
case _TimeFrame() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int current,  int previous,  int? preprevious)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeFrame() when $default != null:
return $default(_that.current,_that.previous,_that.preprevious);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int current,  int previous,  int? preprevious)  $default,) {final _that = this;
switch (_that) {
case _TimeFrame():
return $default(_that.current,_that.previous,_that.preprevious);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int current,  int previous,  int? preprevious)?  $default,) {final _that = this;
switch (_that) {
case _TimeFrame() when $default != null:
return $default(_that.current,_that.previous,_that.preprevious);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeFrame implements TimeFrame {
   _TimeFrame({required this.current, required this.previous, this.preprevious});
  factory _TimeFrame.fromJson(Map<String, dynamic> json) => _$TimeFrameFromJson(json);

@override  int current;
@override  int previous;
@override  int? preprevious;

/// Create a copy of TimeFrame
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeFrameCopyWith<_TimeFrame> get copyWith => __$TimeFrameCopyWithImpl<_TimeFrame>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeFrameToJson(this, );
}



@override
String toString() {
  return 'TimeFrame(current: $current, previous: $previous, preprevious: $preprevious)';
}


}

/// @nodoc
abstract mixin class _$TimeFrameCopyWith<$Res> implements $TimeFrameCopyWith<$Res> {
  factory _$TimeFrameCopyWith(_TimeFrame value, $Res Function(_TimeFrame) _then) = __$TimeFrameCopyWithImpl;
@override @useResult
$Res call({
 int current, int previous, int? preprevious
});




}
/// @nodoc
class __$TimeFrameCopyWithImpl<$Res>
    implements _$TimeFrameCopyWith<$Res> {
  __$TimeFrameCopyWithImpl(this._self, this._then);

  final _TimeFrame _self;
  final $Res Function(_TimeFrame) _then;

/// Create a copy of TimeFrame
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,Object? previous = null,Object? preprevious = freezed,}) {
  return _then(_TimeFrame(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,previous: null == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as int,preprevious: freezed == preprevious ? _self.preprevious : preprevious // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
