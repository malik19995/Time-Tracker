import 'package:app/domain/cubits/app_cubit/app_cubit.dart';
import 'package:app/domain/cubits/tracker_cubit/tracker_cubit.dart';
import 'package:app/ui/home/widgets/add_update_dialog.dart';
import 'package:app/ui/home/widgets/tracker_card.dart';
import 'package:app/ui/home/widgets/user_card.dart';
import 'package:app/ui/stream/stream.dart';
import 'package:app/ui/widgets/app_text.dart';
import 'package:app/ui/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({
    super.key,
  });

  void _addActivity(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AddUpdateDialog(),
    );
  }

  final categories = [
    'Work',
    'Play',
    'Study',
    'Exercise',
    'Social',
    'Self Care'
  ];

  final Widget customLoader = const Center(child: CircularProgressIndicator());
  @override
  Widget build(BuildContext context) {
    // setStatusBarColors(context, context.read<AppCubit>().state.darkMode);

    Widget subPage(String type, {String? error}) => Scaffold(
          body: type == 'error'
              ? Center(
                  child: AppText(
                    error!,
                  ),
                )
              : type == 'loading'
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customLoader,
                        sized(h: 10),
                        const AppText('Fetching your results'),
                      ],
                    )
                  : const Center(
                      child: AppText('Welcome to aidhere \n Time Tracker'),
                    ),
        );

    return BlocBuilder<TrackerCubit, TrackerState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return state.when(
          initial: () {
            Future.delayed(
              const Duration(milliseconds: 2500),
            ).then((value) {
              context.read<TrackerCubit>().fetchAPIResults();
            });
            return subPage('splash');
          },
          error: (error) => subPage('error', error: error),
          loading: () => subPage('loading'),
          loaded: (categoryRecords, selected, userName) => Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  sized(h: AppBar().preferredSize.height),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const StreamPage(),
                      ));
                    },
                    child: const Text('Goto Stream'),
                  ),
                  UserCard(
                    userName: userName,
                    selected: selected,
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      itemCount: categoryRecords.length,
                      itemBuilder: (context, index) => TrackerCard(
                        categoryRecords[index],
                        selected,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              splashColor: Theme.of(context).primaryColorDark,
              backgroundColor: Theme.of(context).primaryColor,
              onPressed: () => _addActivity(context),
              tooltip: 'Add',
              child: Icon(
                Icons.add,
                color: Theme.of(context).primaryColorDark,
              ),
            ),
          ),
        );
      },
    );
  }
}
