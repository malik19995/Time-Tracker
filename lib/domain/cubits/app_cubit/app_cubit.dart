import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends HydratedCubit<AppState> {
  AppCubit() : super(const AppState.initial(true));

  void flipDarkMode() {
    emit(
      state.copyWith(darkMode: !state.darkMode),
    );
  }

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    return AppState.initial((json['darkMode'] == true));
  }

  @override
  Map<String, dynamic>? toJson(AppState state) {
    return {
      'darkMode': state.darkMode,
    };
  }
}
