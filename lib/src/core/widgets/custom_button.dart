import 'package:flutter/material.dart';

import 'package:flutter_keep/src/core/core.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
    this.loading = false,
    this.width,
    this.height,
    this.titleStyle,
    this.placeHolder,
    this.btnColor,
    this.margin,
    this.padding,
    this.borderRadius,
    this.boxShadow,
  });

  final String title;
  final VoidCallback? onTap;
  final bool loading;
  final double? width;
  final double? height;
  final TextStyle? titleStyle;
  final Widget? placeHolder;
  final Color? btnColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      splashColor: Theme.of(context).coreTransparent,
      focusColor: Theme.of(context).coreTransparent,
      highlightColor: Theme.of(context).coreTransparent,
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: padding,
        width: width ?? size.width,
        height: height ?? 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: boxShadow,
          color: btnColor ?? Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
        ),
        child: loading
            ? placeHolder ??
                LThreeDotBounce(
                  size: 20,
                  color: Theme.of(context).coreWhite,
                )
            : Text(
                title,
                style: titleStyle ??
                    Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Theme.of(context).coreWhite),
              ),
      ),
    );
  }
}
