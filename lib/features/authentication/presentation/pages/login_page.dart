import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/spacing.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/widgets/cc_button.dart';
import '../../../../core/widgets/cc_card.dart';
import '../../../../core/widgets/cc_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CCColors.background,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(CCSpacing.xl),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 460),
            child: CCCard(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.sports_martial_arts,
                    size: 80,
                    color: CCColors.primary,
                  ),

                  const SizedBox(height: CCSpacing.lg),

                  const Text(
                    'Combat Connect',
                    style: CCTypography.title,
                  ),

                  const SizedBox(height: CCSpacing.sm),

                  const Text(
                    'Train • Manage • Grow',
                    style: CCTypography.body,
                  ),

                  const SizedBox(height: CCSpacing.xxl),

                  CCTextField(
                    controller: _emailController,
                    label: 'Email',
                    icon: Icons.email_outlined,
                  ),

                  const SizedBox(height: CCSpacing.lg),

                  CCTextField(
                    controller: _passwordController,
                    label: 'Password',
                    icon: Icons.lock_outline,
                    obscureText: _obscurePassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),

                  const SizedBox(height: CCSpacing.sm),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password?'),
                    ),
                  ),

                  const SizedBox(height: CCSpacing.lg),

                  CCButton(
                    text: 'SIGN IN',
                    icon: Icons.login,
                    onPressed: () {},
                  ),

                  const SizedBox(height: CCSpacing.xxl),

                  const Divider(),

                  const SizedBox(height: CCSpacing.lg),

                  OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Create Organization Account',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}