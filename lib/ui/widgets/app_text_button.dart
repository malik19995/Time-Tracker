import 'package:flutter/material.dart';
import 'app_text.dart';

class AppTextButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final bool selected;
  const AppTextButton({
    super.key,
    required this.label,
    this.onPressed,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: AppText(
        label,
        fontSize: 18,
        weight: selected ? FontWeight.w400 : FontWeight.w300,
        color: selected
            ? Theme.of(context).primaryColorDark
            : Theme.of(context).primaryColorLight,
      ),
    );
  }
}
