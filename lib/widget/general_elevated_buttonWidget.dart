import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myroomfinder/constant/app_padding_consant.dart';

class GeneralElevatedButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final double? height;
  final double? width;
  final double? fontSize;
  final TextAlign? textAlign;
  final Color? bgColor;
  final Color? titleColor;
  final EdgeInsets? padding;

  const GeneralElevatedButtonWidget({
    super.key,
    required this.onTap,
    required this.title,
    this.fontSize,
    this.height,
    this.textAlign,
    this.width,
    this.bgColor,
    this.titleColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? AppPaddingConsant.generalWidgetPadding,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height ?? 40.h,
          decoration: BoxDecoration(
            color: bgColor ?? Colors.amber,
            borderRadius: BorderRadius.circular(8),
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 4, 2, 2),
            child: Text(
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontSize: fontSize ?? 20.sp,
                    fontWeight: FontWeight.bold,
                    color: titleColor ?? Colors.black,
                  ),
              title,
              textAlign: textAlign ?? TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
