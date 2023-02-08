// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeframe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeFrame _$$_TimeFrameFromJson(Map<String, dynamic> json) => _$_TimeFrame(
      current: json['current'] as int,
      previous: json['previous'] as int,
      preprevious: json['preprevious'] as int?,
    );

Map<String, dynamic> _$$_TimeFrameToJson(_$_TimeFrame instance) =>
    <String, dynamic>{
      'current': instance.current,
      'previous': instance.previous,
      'preprevious': instance.preprevious,
    };
