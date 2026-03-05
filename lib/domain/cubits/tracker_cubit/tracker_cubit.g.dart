// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracker_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Initial _$InitialFromJson(Map<String, dynamic> json) =>
    _Initial($type: json['runtimeType'] as String?);

Map<String, dynamic> _$InitialToJson(_Initial instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};

_Loading _$LoadingFromJson(Map<String, dynamic> json) =>
    _Loading($type: json['runtimeType'] as String?);

Map<String, dynamic> _$LoadingToJson(_Loading instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};

_Loaded _$LoadedFromJson(Map<String, dynamic> json) => _Loaded(
  (json['data'] as List<dynamic>)
      .map((e) => CategoryRecord.fromJson(e as Map<String, dynamic>))
      .toList(),
  json['selected'] as String,
  json['userName'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$LoadedToJson(_Loaded instance) => <String, dynamic>{
  'data': instance.data,
  'selected': instance.selected,
  'userName': instance.userName,
  'runtimeType': instance.$type,
};

_Error _$ErrorFromJson(Map<String, dynamic> json) =>
    _Error(json['error'] as String, $type: json['runtimeType'] as String?);

Map<String, dynamic> _$ErrorToJson(_Error instance) => <String, dynamic>{
  'error': instance.error,
  'runtimeType': instance.$type,
};
