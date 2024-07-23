import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myroomfinder/constant/color_constant.dart';

class GeneralAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final bool? centerTitle;
  final List<Widget>? actions;
  final EdgeInsets? padding;
  final Color? titleColor;
  final Widget? titleWidget;
  final Color? backgroundColor;
  final double? barHeight = 20.0;
  final double? fontSize;
  final Widget? leading;
  final bool automaticallyImplyLeading = true;
  final VoidCallback? implyLeadingFunc;

  const GeneralAppBar({
    super.key,
    required this.title,
    this.actions,
    this.fontSize,
    this.centerTitle,
    this.titleColor,
    this.titleWidget,
    this.padding,
    this.backgroundColor,
    this.leading,
    this.implyLeadingFunc,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: padding ?? const EdgeInsets.all(0),
        child: AppBar(
          backgroundColor: backgroundColor ?? Colors.black38,
          actions: actions,
          title: titleWidget ??
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: fontSize ?? 18.sp,
                      color: titleColor ?? Colors.black,
                    ),
              ),
          centerTitle: centerTitle ?? true,
          leading: leading ??
              (automaticallyImplyLeading
                  ? InkWell(
                      onTap: () => Navigator.of(context).pop,
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: AppColors.primaryBlackColor,
                      ),
                      // child: Container(
                      //   decoration: const BoxDecoration(
                      //     shape: BoxShape.circle,
                      //     color: Color(
                      //       0xffEEEEEE,
                      //     ),
                      //   ),
                      //   height: 22,
                      //   width: 22,
                      //   margin: const EdgeInsets.only(left: 16),
                      //   padding: const EdgeInsets.all(15),
                      //   child: const Icon(
                      //     Icons.arrow_back,
                      //     size: 18,
                      //   ),
                      // ),
                    )
                  : null),
        ),
      ),
    );
  }
}
