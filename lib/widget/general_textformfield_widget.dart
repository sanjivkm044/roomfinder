import 'package:flutter/material.dart';
import 'package:myroomfinder/constant/app_padding_consant.dart';
import 'package:myroomfinder/constant/color_constant.dart';

class GeneralTextFormField extends StatelessWidget {
  const GeneralTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.labelText,
      required this.prefixIcon,
      this.prefixWidget,
      this.hintMaxLines,
      this.obscureText,
      this.suffixIcon});

  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final int? hintMaxLines;
  final Widget? prefixIcon;
  final Widget? prefixWidget;
  final Widget? suffixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddingConsant.generalWidgetPadding,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          labelText: labelText,
          hintMaxLines: hintMaxLines ?? 1,
          hintText: hintText,
          hintTextDirection: TextDirection.ltr,
          prefixIcon: prefixWidget,
          suffixIcon: suffixIcon,
          hintFadeDuration: const Duration(seconds: 2),
          labelStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: AppColors.primaryBlueColor,
              ),
          hintStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.black,
              style: BorderStyle.solid,
            ),
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.transparent,
                style: BorderStyle.solid,
                width: 1,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.blue,
                style: BorderStyle.solid,
                width: 1,
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.red,
                style: BorderStyle.solid,
              )),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.red,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
