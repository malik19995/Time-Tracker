import 'package:app/core/constants/colors.dart';
import 'package:app/domain/cubits/app_cubit/app_cubit.dart';
import 'package:app/domain/cubits/tracker_cubit/tracker_cubit.dart';
import 'package:app/domain/repository/tracker/tracker_repo.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'ui/home/home.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => AppCubit(),
      ),
      BlocProvider(
        create: (context) => TrackerCubit(
          ImplTrackerRepository(),
        ),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your apapplication.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'aidhere Time Tracker',
          themeMode: state.darkMode ? ThemeMode.dark : ThemeMode.light,
          darkTheme: getTheme(true),
          theme: getTheme(false),
          home: MyHomePage(),
        );
      },
    );
  }

  getTheme(bool darkMode) {
    return ThemeData(
      useMaterial3: true,
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.rubik(fontSize: 24),
        bodyMedium: GoogleFonts.rubik(
          fontSize: 18,
          fontWeight: FontWeight.w100,
        ),
        bodySmall: GoogleFonts.rubik(
          fontSize: 16,
          fontWeight: FontWeight.w100,
        ),
      ),
      primaryTextTheme: TextTheme(
        bodyLarge: GoogleFonts.rubik(
          fontSize: 24,
        ),
        bodyMedium: GoogleFonts.rubik(
          fontSize: 18,
          fontWeight: FontWeight.w100,
        ),
        bodySmall: GoogleFonts.rubik(
          fontSize: 16,
          fontWeight: FontWeight.w100,
        ),
      ),
      scaffoldBackgroundColor:
          darkMode ? AppColors.veryDarkBlue : AppColors.desaturatedBlue,
      primaryColor: darkMode ? AppColors.darkBlue : AppColors.paleBlue,
      primaryColorLight: darkMode ? AppColors.paleBlue : AppColors.darkBlue,
      primaryColorDark: darkMode ? AppColors.white : AppColors.veryDarkBlue,
      secondaryHeaderColor: AppColors.white,
      backgroundColor: darkMode ? AppColors.veryDarkBlue : AppColors.paleBlue,
    );
  }
}
