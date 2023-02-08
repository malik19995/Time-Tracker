// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryRecord _$$_CategoryRecordFromJson(Map<String, dynamic> json) =>
    _$_CategoryRecord(
      title: json['title'] as String,
      timeframes: (json['timeframes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, TimeFrame.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_CategoryRecordToJson(_$_CategoryRecord instance) =>
    <String, dynamic>{
      'title': instance.title,
      'timeframes': instance.timeframes,
    };
