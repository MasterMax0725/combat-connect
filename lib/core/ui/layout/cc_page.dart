import 'package:flutter/material.dart';

class CCPage extends StatelessWidget {
  const CCPage({
    super.key,
    required this.child,
    required this.title,
    this.selectedRoute,
    this.maxWidth = 1200,
    this.showCard = true,
    this.padding = const EdgeInsets.all(24),
  });

  final Widget child;
  final Widget title;
  final String? selectedRoute;
  final double maxWidth;
  final bool showCard;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: maxWidth,
          ),
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}