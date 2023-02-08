import 'package:app/core/models/category_record.dart';
import 'package:app/core/models/timeframe.dart';
import 'package:app/domain/cubits/tracker_cubit/tracker_cubit.dart';
import 'package:app/ui/widgets/app_text.dart';
import 'package:app/ui/widgets/app_text_button.dart';
import 'package:app/ui/widgets/app_text_field.dart';
import 'package:app/ui/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddUpdateDialog extends StatefulWidget {
  final CategoryRecord? categoryRecord;
  const AddUpdateDialog({super.key, this.categoryRecord});

  @override
  State<AddUpdateDialog> createState() => _AddUpdateDialogState();
}

class _AddUpdateDialogState extends State<AddUpdateDialog> {
  late CategoryRecord record;
  late bool isUpdate;

  @override
  void initState() {
    isUpdate = widget.categoryRecord != null;
    if (isUpdate) {
      record = widget.categoryRecord!;
    } else {
      record = CategoryRecord(
        title: '',
        timeframes: {},
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                sized(h: 20),
                AppText(
                  '${isUpdate ? 'Update' : 'Add New'} Record',
                  fontSize: 20,
                  weight: FontWeight.bold,
                  color: Theme.of(context).primaryColorDark,
                ),
                Divider(
                  color: Theme.of(context).primaryColorDark,
                ),
                sized(h: 20),
                AppTextField(
                  label: 'Category',
                  isRequired: true,
                  initialValue: record.title,
                  onChanged: (s) {
                    setState(() {
                      record = record.copyWith(title: s);
                    });
                  },
                ),
                sized(h: 15),
                _getCategoryFields(
                  context,
                  'daily',
                ),
                sized(h: 15),
                _getCategoryFields(
                  context,
                  'weekly',
                ),
                sized(h: 15),
                _getCategoryFields(
                  context,
                  'monthly',
                ),
                sized(h: 20),
                Divider(
                  color: Theme.of(context).primaryColorDark,
                ),
                AppTextButton(
                  label: isUpdate ? 'UPDATE' : 'ADD',
                  onPressed: () {
                    context.read<TrackerCubit>().updateRecord(record);
                    Navigator.of(context).pop();
                  },
                  selected: true,
                )
              ]),
        ),
      ),
    );
  }

  _getCategoryFields(BuildContext context, String period) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          period.capitalize(),
          fontSize: 20,
          weight: FontWeight.bold,
          color: Theme.of(context).primaryColorDark,
        ),
        sized(h: 20),
        AppTextField(
          label: 'Current',
          isNumberField: true,
          initialValue: record.timeframes[period]?.current.toString() ?? '',
          isRequired: true,
          onChanged: (v) {
            setState(() {
              record.timeframes[period] = TimeFrame(
                current: int.parse(v),
                previous: record.timeframes[period]?.previous ?? 0,
                preprevious: record.timeframes[period]?.preprevious,
              );
            });
          },
          suffix: 'hrs',
        ),
        sized(h: 10),
        AppTextField(
          label: 'Previous',
          isNumberField: true,
          initialValue: record.timeframes[period]?.previous.toString() ?? '',
          isRequired: true,
          onChanged: (v) {
            setState(() {
              record.timeframes[period] = TimeFrame(
                previous: int.parse(v),
                current: record.timeframes[period]?.current ?? 0,
                preprevious: record.timeframes[period]?.preprevious,
              );
            });
          },
          suffix: 'hrs',
        )
      ],
    );
  }
}
