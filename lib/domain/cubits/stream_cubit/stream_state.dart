part of 'stream_cubit.dart';

@freezed
abstract class StreamState with _$StreamState {
  const factory StreamState.initial() = _Initial;
}
