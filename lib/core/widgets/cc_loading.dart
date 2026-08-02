import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CCLoading extends StatelessWidget {
  const CCLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: CCColors.primary,
      ),
    );
  }
}