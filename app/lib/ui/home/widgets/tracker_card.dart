import 'dart:math';

import 'package:app/core/constants/colors.dart';
import 'package:app/core/constants/constants.dart';
import 'package:app/core/models/category_record.dart';
import 'package:app/ui/home/widgets/add_update_dialog.dart';
import 'package:app/ui/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrackerCard extends StatelessWidget {
  final CategoryRecord categoryRecord;
  final String selected;

  const TrackerCard(
    this.categoryRecord,
    this.selected, {
    super.key,
  });

  Color _getCardColor(String category) {
    switch (category) {
      case 'Work':
        return AppColors.lightRedWork;
      case 'Play':
        return AppColors.paleBlue;
      case 'Study':
        return AppColors.lightRedStudy;
      case 'Exercise':
        return AppColors.limeGreen;
      case 'Social':
        return AppColors.violet;
      case 'Self Care':
        return AppColors.softOrange;
      default:
        int random = Random().nextInt(kCategoryColors.length);
        return kCategoryColors[random];
    }
  }

  String _getCardImage(String category) {
    if (kCategories.contains(category.toLowerCase()) ||
        category == 'Self Care') {
      if (category == 'Self Care') {
        return 'assets/images/icon-self-care.svg';
      } else {
        return 'assets/images/icon-${category.toLowerCase()}.svg';
      }
    } else {
      int random = Random().nextInt(kCategories.length);
      return 'assets/images/icon-${kCategories[random]}.svg';
    }
  }

  @override
  Widget build(BuildContext context) {
    final prevText = selected == kDaily
        ? 'Yesterday'
        : selected == kWeekly
            ? 'Last Week'
            : 'Last Month';

    final newPrevTime =
        categoryRecord.timeframes[selected.toLowerCase()]!.previous;

    final oldPrevTime =
        categoryRecord.timeframes[selected.toLowerCase()]?.preprevious;
    String? percentDiff;
    String? prevPrevText;
    if (oldPrevTime != null) {
      if (newPrevTime > oldPrevTime) {
        int difference = newPrevTime - oldPrevTime;

        percentDiff = oldPrevTime == 0
            ? '+$newPrevTime'
            : '+${(difference / oldPrevTime * 100).toStringAsFixed(0)}';
      } else {
        int difference = oldPrevTime - newPrevTime;

        percentDiff = oldPrevTime == 0
            ? '100'
            : '-${(difference / oldPrevTime * 100).toStringAsFixed(0)}';
      }
      prevPrevText = selected == kDaily
          ? 'day'
          : selected == kWeekly
              ? 'week'
              : 'month';
    }
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      color: _getCardColor(categoryRecord.title),
      child: SizedBox(
        height: 175,
        child: Stack(children: [
          Positioned(
            top: -10,
            right: 20,
            child: SvgPicture.asset(
              _getCardImage(categoryRecord.title),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              height: 125,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppText(
                          categoryRecord.title,
                          weight: FontWeight.w500,
                          color: Theme.of(context).primaryColorLight,
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: ((context) => AddUpdateDialog(
                                      categoryRecord: categoryRecord,
                                    )));
                          },
                          icon: Icon(
                            Icons.more_horiz_rounded,
                            color: Theme.of(context).primaryColorLight,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          '${categoryRecord.timeframes[selected.toLowerCase()]!.current}hrs',
                          weight: FontWeight.w300,
                          fontSize: 26,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AppText(
                              '$prevText - $newPrevTime hrs',
                              weight: FontWeight.w400,
                              fontSize: 16,
                              color: Theme.of(context).primaryColorLight,
                            ),
                            if (oldPrevTime != null)
                              AppText(
                                '$percentDiff% compared to $prevPrevText before ',
                                weight: FontWeight.w400,
                                fontSize: 12,
                                color: Theme.of(context).primaryColorLight,
                              ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
