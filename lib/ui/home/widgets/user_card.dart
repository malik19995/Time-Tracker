import 'package:app/core/constants/colors.dart';
import 'package:app/domain/cubits/app_cubit/app_cubit.dart';
import 'package:app/domain/cubits/tracker_cubit/tracker_cubit.dart';
import 'package:app/ui/widgets/app_text.dart';
import 'package:app/ui/widgets/app_text_button.dart';
import 'package:app/ui/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/user_image.dart';

class UserCard extends StatelessWidget {
  final String userName, selected;

  const UserCard({
    super.key,
    required this.userName,
    required this.selected,
  });

  _changeSelected(BuildContext context, String newSelect) {
    context.read<TrackerCubit>().switchSelected(newSelect);
  }

  static List<String> periods = [
    'daily',
    'weekly',
    'monthly',
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        alignment: Alignment.topCenter,
        height: 225,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              height: 150,
              child: Stack(
                children: [
                  Positioned(
                    right: 5,
                    top: 5,
                    child: IconButton(
                      onPressed: () {
                        context.read<AppCubit>().flipDarkMode();
                      },
                      icon: BlocBuilder<AppCubit, AppState>(
                        builder: (context, state) {
                          return Icon(
                            state.darkMode ? Icons.light_mode : Icons.dark_mode,
                            color: Theme.of(context).secondaryHeaderColor,
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const UserImage(),
                        sized(w: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              'Report for',
                              color: Theme.of(context).secondaryHeaderColor,
                              fontSize: 16,
                              weight: FontWeight.w300,
                            ),
                            AppText(
                              userName,
                              color: Theme.of(context).secondaryHeaderColor,
                              fontSize: 22,
                              weight: FontWeight.w300,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: periods
                    .map(
                      (e) => AppTextButton(
                        label: e.capitalize(),
                        onPressed: () {
                          _changeSelected(context, e);
                        },
                        selected: selected == e,
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
