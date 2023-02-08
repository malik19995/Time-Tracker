import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'stream_state.dart';
part 'stream_cubit.freezed.dart';

class StreamCubit extends HydratedCubit<StreamState> {
  StreamCubit() : super(const StreamState.initial());

  @override
  StreamState? fromJson(Map<String, dynamic> json) {
    return const StreamState.initial();
  }

  @override
  Map<String, dynamic>? toJson(StreamState state) {
    return {};
  }
}
