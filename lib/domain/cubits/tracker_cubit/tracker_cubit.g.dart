// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracker_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Initial _$$_InitialFromJson(Map<String, dynamic> json) => _$_Initial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_InitialToJson(_$_Initial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_Loading _$$_LoadingFromJson(Map<String, dynamic> json) => _$_Loading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoadingToJson(_$_Loading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_Loaded _$$_LoadedFromJson(Map<String, dynamic> json) => _$_Loaded(
      (json['data'] as List<dynamic>)
          .map((e) => CategoryRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['selected'] as String,
      json['userName'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoadedToJson(_$_Loaded instance) => <String, dynamic>{
      'data': instance.data,
      'selected': instance.selected,
      'userName': instance.userName,
      'runtimeType': instance.$type,
    };

_$_Error _$$_ErrorFromJson(Map<String, dynamic> json) => _$_Error(
      json['error'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ErrorToJson(_$_Error instance) => <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };
