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
            // LEFT HERO IMAGE
            Expanded(
              flex: 6,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),

                  // Subtle dark overlay
                  Container(
                    color: Colors.black.withValues(alpha: 0.12),
                  ),

                  // Smooth fade into the auth panel
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 220,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.transparent,
                            Color(0xE6151515),
                            Color(0xFF151515),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // RIGHT AUTH PANEL
            Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF191919),
                      Color(0xFF151515),
                    ],
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.35),
                        blurRadius: 40,
                        spreadRadius: 8,
                        offset: const Offset(-8, 0),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 64,
                    vertical: 64,
                  ),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 460,
                      ),
                      child: Transform.translate(
                        offset: const Offset(0, 40),
                        child: child,
                      ),
                    ),
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