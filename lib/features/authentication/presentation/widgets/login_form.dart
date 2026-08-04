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

    // TODO: Firebase Authentication

    await Future.delayed(const Duration(seconds: 1));

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
          // Welcome
          Text(
            'Welcome back.',
            style: theme.textTheme.displaySmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.8,
              height: 1.05,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            'Continue building champions.',
            style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.white70,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 48),

          // Email
          CCTextField(
            label: 'EMAIL',
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

          const SizedBox(height: 28),

          // Password
          CCPasswordField(
            label: 'PASSWORD',
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

          const SizedBox(height: 22),

          Row(
            children: [
              Checkbox(
                value: _rememberMe,
                activeColor: const Color(0xFFA65A4D),
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value ?? false;
                  });
                },
              ),

              const Text(
                'Remember Me',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),

              const Spacer(),

              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xFFA65A4D),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 36),

          SizedBox(
            width: double.infinity,
            height: 58,
            child: CCButton(
              label: 'SIGN IN',
              loading: _loading,
              onPressed: _login,
            ),
          ),

          const SizedBox(height: 34),

          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Create a new academy',
                style: TextStyle(
                  color: Color(0xFFA65A4D),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}