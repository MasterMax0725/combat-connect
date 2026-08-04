import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/ui/buttons/cc_button.dart';
import '../../../../../core/ui/cards/cc_card.dart';
import '../../../../../core/ui/layout/cc_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CCPage(
      title: const Text(
        'Combat Connect',
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1150,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: CCCard(
                  padding: const EdgeInsets.all(48),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      Text(
                        "Let's set up your academy.",
                        style: theme
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                              fontWeight:
                                  FontWeight.bold,
                            ),
                      ),

                      const SizedBox(height: 20),

                      Text(
                        "Welcome to Combat Connect",
                        style: theme
                            .textTheme
                            .headlineSmall,
                      ),

                      const SizedBox(height: 16),

                      Text(
                        "The complete platform for martial arts academies.",
                        style: theme
                            .textTheme
                            .titleLarge,
                      ),

                      const SizedBox(height: 40),

                      _feature(
                        Icons.account_balance,
                        "Academy Identity",
                      ),

                      _feature(
                        Icons.sports_martial_arts,
                        "Martial Arts & Disciplines",
                      ),

                      _feature(
                        Icons.groups,
                        "Affiliations",
                      ),

                      _feature(
                        Icons.school,
                        "Programs",
                      ),

                      _feature(
                        Icons.location_on,
                        "Primary Branch",
                      ),

                      _feature(
                        Icons.payments,
                        "Billing Preferences",
                      ),

                      const SizedBox(height: 40),

                      Row(
                        children: [
                          const Icon(
                            Icons.schedule,
                          ),

                          const SizedBox(width: 10),

                          Text(
                            "About 5 minutes",
                            style: theme
                                .textTheme
                                .titleMedium,
                          ),
                        ],
                      ),

                      const SizedBox(height: 50),

                      CCButton(
                        label:
                            "Let's Get Started",
                        icon:
                            Icons.arrow_forward,
                        onPressed: () {
                          context.go(
                            '/academy/setup/martial-art',
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 40),

              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(
                            24),
                    color: theme
                        .colorScheme
                        .primaryContainer,
                  ),
                  child: Center(
                    child: Icon(
                      Icons
                          .sports_martial_arts,
                      size: 220,
                      color: theme
                          .colorScheme
                          .primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _feature(
    IconData icon,
    String title,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 18,
      ),
      child: Row(
        children: [
          Icon(icon),

          const SizedBox(width: 14),

          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}