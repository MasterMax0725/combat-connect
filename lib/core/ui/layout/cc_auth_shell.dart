import 'package:flutter/material.dart';

class CCAuthShell extends StatelessWidget {
  const CCAuthShell({
    super.key,
    required this.child,
    this.image = 'assets/branding/artwork/hero.png',
  });

  final Widget child;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0E0E),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.black,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),

            Expanded(
              flex: 4,
              child: Container(
                color: const Color(0xFF151515),
                padding: const EdgeInsets.symmetric(
                  horizontal: 56,
                  vertical: 56,
                ),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 420,
                    ),
                    child: child,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}