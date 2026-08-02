import 'package:flutter/material.dart';

import 'colors.dart';

class CCTypography {
  CCTypography._();

  static const hero = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: CCColors.textPrimary,
  );

  static const title = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    color: CCColors.textPrimary,
  );

  static const heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: CCColors.textPrimary,
  );

  static const body = TextStyle(
    fontSize: 16,
    color: CCColors.textPrimary,
  );

  static const caption = TextStyle(
    fontSize: 13,
    color: CCColors.textSecondary,
  );
}