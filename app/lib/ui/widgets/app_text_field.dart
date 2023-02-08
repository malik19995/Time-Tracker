import 'package:app/ui/widgets/app_text.dart';
import 'package:app/ui/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Default textInputAction is next. For last field use 'done'.
class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.label,
    this.isRequired = false,
    this.isEnabled = true,
    this.isLocationField = false,
    this.onChanged,
    this.hintText,
    this.initialValue = '',
    this.suffix,
    this.validator,
    this.obscureText = false,
    this.maxLength,
    this.textInputAction = TextInputAction.next,
    this.isNumberField = false,
    this.borderRadius = 12,
  });
  final String label;
  final bool obscureText;
  final bool isRequired;
  final String? hintText;
  final String? suffix;
  final String? Function(String?)? validator;
  final int? maxLength;
  final double borderRadius;
  final String initialValue;
  final bool isEnabled;
  final bool isNumberField;
  final bool isLocationField;
  final TextInputAction textInputAction;
  final Function(String s)? onChanged;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late TextEditingController _textEditingController;
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController(text: widget.initialValue);
  }

  @override
  void didChangeDependencies() {
    _textEditingController.text = widget.initialValue;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      enabled: widget.isEnabled,
      controller: _textEditingController,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      style: !widget.isEnabled
          ? theme.textTheme.bodyMedium!.copyWith(
              color: const Color(0xffC8C8C8),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )
          : theme.textTheme.bodyMedium!.copyWith(
              color: theme.primaryColorDark,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
      onSaved: (s) {
        if (widget.onChanged != null) widget.onChanged!(s ?? '');
      },
      validator: (s) {
        if (widget.isRequired && (s != null && s.isEmpty)) {
          return "Required Field";
        }
        if (widget.validator != null && s != null && s.isNotEmpty) {
          return widget.validator!(s);
        }
        return null;
      },
      maxLength: widget.maxLength,
      inputFormatters: widget.isNumberField
          ? [
              FilteringTextInputFormatter.allow(RegExp('[0-9]')),
            ]
          : [],
      keyboardType: widget.isNumberField ? TextInputType.number : null,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        suffix: widget.suffix != null
            ? AppText(
                widget.suffix!,
                color: theme.primaryColorDark,
              )
            : null,
        hoverColor: theme.primaryColorDark,
        fillColor: theme.primaryColorDark,
        focusColor: theme.primaryColorDark,
        label: AppText(
          widget.label,
          color: theme.primaryColorDark,
        ),
        hintText: widget.hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: theme.primaryColorDark),
        suffixIcon: widget.isLocationField
            ? Icon(Icons.location_pin, color: theme.backgroundColor)
            : sized(w: 10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: theme.primaryColorDark,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: theme.primaryColorDark,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: theme.primaryColorDark,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
      ),
    );
  }
}
