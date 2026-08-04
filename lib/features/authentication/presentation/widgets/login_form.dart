import 'package:flutter/material.dart';

import 'package:combat_connect/core/ui/buttons/cc_button.dart';
import 'package:combat_connect/core/ui/forms/cc_password_field.dart';
import 'package:combat_connect/core/ui/forms/cc_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _rememberMe = true;
  bool _loading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _loading = true;
    });

    // TODO:
    // Firebase Authentication

    await Future.delayed(
      const Duration(seconds: 1),
    );

    if (!mounted) return;

    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Back',
            style: theme.textTheme.headlineLarge,
          ),

          const SizedBox(height: 8),

          Text(
            'Continue building champions.',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Colors.white70,
            ),
          ),

          const SizedBox(height: 40),

          CCTextField(
            label: 'Email',
            controller: _emailController,
            hintText: 'coach@academy.com',
            prefixIcon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Email is required.';
              }

              return null;
            },
          ),

          const SizedBox(height: 24),

          CCPasswordField(
            label: 'Password',
            controller: _passwordController,
            hintText: 'Enter your password',
            textInputAction: TextInputAction.done,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password is required.';
              }

              return null;
            },
            onFieldSubmitted: (_) => _login(),
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              Checkbox(
                value: _rememberMe,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value ?? true;
                  });
                },
              ),

              const Text(
                'Remember Me',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),

              const Spacer(),

              TextButton(
                onPressed: () {
                  // TODO:
                  // Forgot password
                },
                child: const Text(
                  'Forgot Password?',
                ),
              ),
            ],
          ),

          const SizedBox(height: 32),

          SizedBox(
            width: double.infinity,
            child: CCButton(
              label: 'SIGN IN',
              loading: _loading,
              onPressed: _login,
            ),
          ),

          const SizedBox(height: 32),

          Center(
            child: TextButton(
              onPressed: () {
                // TODO:
                // Create Academy
              },
              child: const Text(
                'Create a new academy',
              ),
            ),
          ),
        ],
      ),
    );
  }
}