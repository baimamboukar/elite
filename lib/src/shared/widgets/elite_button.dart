import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

class EliteButton extends StatelessWidget {
  const EliteButton({
    required this.text,
    this.action,
    this.color,
    super.key,
    this.width = .9,
    this.icon,
    this.textColor,
  });
  final Widget? icon;
  final String text;
  final VoidCallback? action;
  final Color? color;
  final Color? textColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        width: context.width * .85,
        height: 48,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              icon!,
              8.hGap,
            ] else
              const SizedBox.shrink(),
            Text(
              text,
              style: context.textTheme.bodyMedium!.copyWith(
                color: textColor ?? context.colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
