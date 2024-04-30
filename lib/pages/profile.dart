import 'package:account_app/components/profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final user;
  const ProfilePage({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ProfileComponet(user: user),
    );
  }
}
