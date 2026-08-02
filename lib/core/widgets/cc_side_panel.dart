import 'package:flutter/material.dart';

class CCSidePanel extends StatelessWidget {
  const CCSidePanel({
    super.key,
    required this.title,
    required this.child,
    this.width = 430,
  });

  final String title;
  final Widget child;
  final double width;

  static Future<void> show(
    BuildContext context, {
    required String title,
    required Widget child,
    double width = 430,
  }) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Close',
      barrierColor: Colors.black54,
      transitionDuration: const Duration(milliseconds: 250),
      pageBuilder: (context, animation, secondaryAnimation) {
        return SafeArea(
          child: Align(
            alignment: Alignment.centerRight,
            child: Material(
              color: Colors.transparent,
              child: Container(
                width: width,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xfff8f9fb),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 30,
                      offset: Offset(-8, 0),
                    ),
                  ],
                ),
                child: CCSidePanel(
                  title: title,
                  width: width,
                  child: child,
                ),
              ),
            ),
          ),
        );
      },
      transitionBuilder: (
        context,
        animation,
        secondaryAnimation,
        child,
      ) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeOutCubic,
            ),
          ),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 72,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Color(0xffe5e7eb),
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                splashRadius: 22,
                tooltip: 'Close',
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
        ),

        Expanded(
          child: child,
        ),
      ],
    );
  }
}