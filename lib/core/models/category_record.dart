import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeframe.dart';

part 'category_record.freezed.dart';
part 'category_record.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CategoryRecord with _$CategoryRecord {
  factory CategoryRecord({
    required final String title,
    required Map<String, TimeFrame> timeframes,
  }) = _CategoryRecord;

  factory CategoryRecord.fromJson(Map<String, Object?> json) =>
      _$CategoryRecordFromJson(json);
}
