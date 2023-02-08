import 'package:freezed_annotation/freezed_annotation.dart';

part 'timeframe.freezed.dart';
part 'timeframe.g.dart';

@unfreezed
class TimeFrame with _$TimeFrame {
  factory TimeFrame({
    required int current,
    required int previous,
    int? preprevious,
  }) = _TimeFrame;

  factory TimeFrame.fromJson(Map<String, Object?> json) =>
      _$TimeFrameFromJson(json);
}
