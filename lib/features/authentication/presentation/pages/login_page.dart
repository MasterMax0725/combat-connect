import 'package:flutter/material.dart';

import 'package:combat_connect/core/ui/layout/cc_auth_shell.dart';
import 'package:combat_connect/features/authentication/presentation/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CCAuthShell(
      child: LoginForm(),
    );
  }
}