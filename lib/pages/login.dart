import 'package:account_app/components/login.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final bool? error;

  const LoginPage({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LoginComponent(
        error: error,
      ),
    );
  }
}
