
import 'package:app/core/constants/constants.dart';
import 'package:app/domain/cubits/app_cubit/app_cubit.dart';
import 'package:app/domain/cubits/tracker_cubit/tracker_cubit.dart';
import 'package:app/domain/repository/tracker/tracker_repo.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockStorage extends Mock implements Storage {}

void main() {
  late Storage hydratedStorage;

  void initHydratedStorage() {
    TestWidgetsFlutterBinding.ensureInitialized();
    hydratedStorage = MockStorage();
    when(
      () => hydratedStorage.write(any(), any<dynamic>()),
    ).thenAnswer((_) async {});
    HydratedBloc.storage = hydratedStorage;
  }

  MockRepository mockTrackerRepository;
  TrackerCubit cubit;
  AppCubit appCubit;

  initHydratedStorage();

  mockTrackerRepository = MockRepository();

  cubit = TrackerCubit(mockTrackerRepository);

  appCubit = AppCubit();

  blocTest<TrackerCubit, TrackerState>(
    'emits TrackerLoaded when FetchAPI is called.',
    build: () => cubit,
    act: (bloc) => bloc.fetchAPIResults(),
    expect: () => <TrackerState>[
      const TrackerState.loading(),
      TrackerState.loaded(kSampleResponse, kDaily, 'Jeremy Robson')
    ],
  );

  blocTest<AppCubit, AppState>(
    'emits AppState with Dark Mode as true.',
    build: () => appCubit,
    act: (bloc) => bloc.flipDarkMode(),
    expect: () => <AppState>[
      const AppState.initial(false),
    ],
  );
}
