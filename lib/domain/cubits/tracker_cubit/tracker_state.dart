part of 'tracker_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class TrackerState with _$TrackerState {
  const factory TrackerState.initial() = _Initial;

  const factory TrackerState.loading() = _Loading;

  const factory TrackerState.loaded(
    List<CategoryRecord> data,
    String selected,
    String userName,
  ) = _Loaded;

  factory TrackerState.error(String error) = _Error;

  factory TrackerState.fromJson(Map<String, dynamic> json) =>
      _$TrackerStateFromJson(json);
}
