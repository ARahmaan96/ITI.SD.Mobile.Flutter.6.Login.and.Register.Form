import 'package:account_app/cubit/user_cubit.dart';
import 'package:account_app/pages/Login.dart';
import 'package:account_app/pages/error.dart';
import 'package:account_app/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const AccountApp());
}

class AccountApp extends StatelessWidget {
  const AccountApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          body: BlocBuilder<UserCubit, UserState>(
            builder: (context, state) {
              if (state is NoUser) {
                return const LoginPage();
              } else if (state is Loading) {
                return const SpinKitRing(
                  color: Colors.white,
                  size: 50.0,
                );
              } else if (state is LoggingFailed) {
                return const LoginPage(error: true);
              } else if (state is LoggedIn) {
                return ProfilePage(user: state.user);
              } else {
                return const ErrorPage();
              }
            },
          ),
        ),
      ),
    );
  }
}
