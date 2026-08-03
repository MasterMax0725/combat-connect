import 'package:flutter/material.dart';

enum CCButtonType {
  primary,
  secondary,
  danger,
}

class CCButton extends StatelessWidget {
  const CCButton({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
    this.type = CCButtonType.primary,
    this.width,
    this.height = 48,
    this.loading = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final CCButtonType type;
  final double? width;
  final double height;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final child = loading
        ? const SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 18),
                const SizedBox(width: 8),
              ],
              Text(label),
            ],
          );

    switch (type) {
      case CCButtonType.primary:
        return SizedBox(
          width: width,
          height: height,
          child: FilledButton(
            onPressed: loading ? null : onPressed,
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: child,
          ),
        );

      case CCButtonType.secondary:
        return SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: loading ? null : onPressed,
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: child,
          ),
        );

      case CCButtonType.danger:
        return SizedBox(
          width: width,
          height: height,
          child: FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            onPressed: loading ? null : onPressed,
            child: child,
          ),
        );
    }
  }
}