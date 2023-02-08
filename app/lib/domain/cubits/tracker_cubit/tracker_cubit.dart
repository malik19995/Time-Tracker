import 'dart:math';

import 'package:app/core/constants/constants.dart';
import 'package:app/core/models/category_record.dart';
import 'package:app/domain/repository/tracker/tracker_repo.dart';
import 'package:app/ui/widgets/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'tracker_state.dart';
part 'tracker_cubit.freezed.dart';
part 'tracker_cubit.g.dart';

class TrackerCubit extends HydratedCubit<TrackerState> {
  final TrackerRepository repo;

  TrackerCubit(this.repo) : super(const TrackerState.initial());

  ///
  ///
  /// Fetch results from API
  void fetchAPIResults() async {
    emit(const TrackerState.loading());
    List<CategoryRecord>? responses =
        await repo.getTrackerRecords().catchError((err, s) {
      if (err.toString().contains('SocketException')) {
        emit(
          TrackerState.error(
            'Not Connected.\n Make sure your internet is working',
          ),
        );
      } else {
        emit(
          TrackerState.error(
            'Error Occurred. Please try again.',
          ),
        );
      }
      return null;
    });
    if (responses != null) {
      emit(TrackerState.loaded(responses, kDaily, 'Jeremy Robson'));
    }
  }

  ///
  ///
  /// Add or Update Record to local storage.
  void updateRecord(CategoryRecord updatedRecord) {
    state.mapOrNull(
      loaded: (value) {
        int prevIndex = value.data.indexWhere(
          (element) => element.title == updatedRecord.title,
        );
        emit(const TrackerState.loading());
        if (prevIndex == -1) {
          showToast('Adding record ${updatedRecord.title}');
          logger.e('Adding record ${updatedRecord.title}');
          emit(
            value.copyWith(
              data: [...value.data, updatedRecord],
            ),
          );
        } else {
          showToast('Updating record ${updatedRecord.title}');
          logger.e('Updating record ${updatedRecord.title}');

          value.data[prevIndex] = updatedRecord;
          emit(value);
        }
      },
    );
  }

  ///
  ///
  /// Switching selected period e.g [daily, weekly, monthly]
  void switchSelected(String newSelected) {
    state.maybeWhen(
      loaded: (
        data,
        selected,
        userName,
      ) =>
          emit(TrackerState.loaded(
        data,
        newSelected,
        userName,
      )),
      orElse: () {
        return;
      },
    );
  }

  int _nextRandom(int previous, int current) {
    return Random().nextInt(previous + 10);
  }

  @override
  TrackerState? fromJson(Map<String, dynamic> json) {
    if (json.isNotEmpty) {
      var state = TrackerState.fromJson(json);
      TrackerState newState = state.mapOrNull(
        loaded: (value) {
          ///
          ///
          /// Added MockData on App Restore. Not added in first load.
          for (CategoryRecord element in value.data) {
            element.timeframes.forEach((key, value) {
              value.preprevious = _nextRandom(value.previous, value.current);
            });
          }
          return value;
        },
      )!;
      return newState;
    } else {
      return const TrackerState.initial();
    }
  }

  @override
  Map<String, dynamic>? toJson(TrackerState state) {
    return state.mapOrNull(
      loaded: (value) {
        return value.toJson();
      },
    );
  }
}
