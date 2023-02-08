import 'package:app/core/constants/colors.dart';
import 'package:app/core/models/category_record.dart';
import 'package:app/core/models/timeframe.dart';
import 'package:flutter/material.dart';

const String baseUrl = 'https://wookie.codesubmit.io/time-tracking';

const String kDaily = 'daily';
const String kWeekly = 'weekly';
const String kMonthly = 'monthly';
const List<String> kCategories = [
  'self-care',
  'work',
  'social',
  'exercise',
  'study',
  'play'
];

final List<CategoryRecord> kSampleResponse = [
  CategoryRecord(
    title: 'Work',
    timeframes: {
      kDaily: TimeFrame(current: 6, previous: 4, preprevious: 5),
      kWeekly: TimeFrame(current: 40, previous: 35, preprevious: 50),
      kMonthly: TimeFrame(current: 220, previous: 230, preprevious: 240),
    },
  ),
  CategoryRecord(
    title: 'Relax',
    timeframes: {
      kDaily: TimeFrame(current: 2, previous: 3, preprevious: 1),
      kWeekly: TimeFrame(current: 15, previous: 18, preprevious: 10),
      kMonthly: TimeFrame(current: 60, previous: 72, preprevious: 50),
    },
  ),
];

const List<Color> kCategoryColors = [
  AppColors.lightRedWork,
  AppColors.paleBlue,
  AppColors.lightRedStudy,
  AppColors.limeGreen,
  AppColors.violet,
  AppColors.softOrange,
];
