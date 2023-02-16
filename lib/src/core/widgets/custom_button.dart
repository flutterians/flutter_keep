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
    this.leading = const SizedBox(),
    this.trailing = const SizedBox(),
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
  final Widget leading;
  final Widget trailing;

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
          boxShadow: boxShadow ??
              [
                const BoxShadow(
                  blurRadius: .2,
                  spreadRadius: .2,
                  offset: Offset(.2, .2),
                )
              ],
          color: btnColor ?? Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
        ),
        child: loading
            ? placeHolder ??
                LThreeDotBounce(
                  size: 20,
                  color: Theme.of(context).coreWhite,
                )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 30,
                    width: 30,
                    child: leading,
                  ),
                  const Spacer(),
                  Text(
                    title,
                    style: titleStyle ??
                        Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Theme.of(context).coreWhite),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 30,
                    width: 30,
                    child: trailing,
                  ),
                ],
              ),
      ),
    );
  }
}
