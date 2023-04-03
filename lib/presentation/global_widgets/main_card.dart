import 'package:flutter/material.dart';
import 'package:newcycle_code_challenge/utils/app_colors.dart';
import 'package:newcycle_code_challenge/utils/utils.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    required this.child,
    this.color = AppColors.white,
    this.margin = EdgeInsets.zero,
    this.onTap,
    this.padding = const EdgeInsets.all(PaddingSize.small),
    this.radiusSize = RadiusSize.large,
  });

  final Widget child;
  final Color color;
  final EdgeInsets margin;
  final void Function()? onTap;
  final EdgeInsets padding;
  final double radiusSize;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: margin,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radiusSize),
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
