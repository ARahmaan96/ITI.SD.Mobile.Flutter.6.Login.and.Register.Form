import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/error.png"),
          const Text(
            "Oops! An unexpected error occurred",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
