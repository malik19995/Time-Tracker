// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeframe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TimeFrame _$TimeFrameFromJson(Map<String, dynamic> json) => _TimeFrame(
  current: (json['current'] as num).toInt(),
  previous: (json['previous'] as num).toInt(),
  preprevious: (json['preprevious'] as num?)?.toInt(),
);

Map<String, dynamic> _$TimeFrameToJson(_TimeFrame instance) =>
    <String, dynamic>{
      'current': instance.current,
      'previous': instance.previous,
      'preprevious': instance.preprevious,
    };
