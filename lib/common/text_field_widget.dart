import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../core/theme/app_colors.dart';


class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final FormFieldValidator? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? label;
  final String? text;
  final String? numCode;
  final String? hintText;
  final bool? enabled;
  final TextInputType? keyboardType;
  final int? maxLine;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final TextInputAction? textInputAction;

  const TextFieldWidget({
    required this.controller,
    required this.obscureText,
    this.validator,
    this.onChanged,
    this.label,
    this.prefixIcon,
    this.numCode,
    this.suffixIcon,
    this.enabled,
    this.hintText,
    this.text,
    this.keyboardType,
    this.maxLine,
    Key? key,
    this.maxLength,
    this.maxLengthEnforcement,
    this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return SizedBox(
        width: 382,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: text == null
                  ? null
                  : Text(
                      "$text",
                      style: theme.bodySmall,
                    ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLength: maxLength,
              maxLengthEnforcement: maxLengthEnforcement,
              enabled: enabled,
              style: theme.titleSmall,
              controller: controller,
              onChanged: onChanged,
              obscureText: obscureText,
              keyboardType: keyboardType,
              cursorColor: Get.isDarkMode ? whiteColor : blackColor,
              maxLines: maxLine,
              validator: validator,
              decoration: InputDecoration(
                hintStyle: theme.labelSmall,
                hintText: hintText,
                labelStyle: theme.headlineSmall,
                labelText: label,
                prefixIcon: prefixIcon,
                prefixText: numCode,
                suffixIcon: suffixIcon,
              ),
              textInputAction: textInputAction,
            ),
          ],
        ));
  }
}
