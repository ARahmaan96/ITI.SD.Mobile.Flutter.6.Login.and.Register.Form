import 'package:account_app/cubit/user_cubit.dart';
import 'package:account_app/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// TODO: Vlidation

class LoginComponent extends StatefulWidget {
  final bool? error;
  const LoginComponent({super.key, this.error});

  @override
  State<LoginComponent> createState() => _LoginComponentState();
}

class _LoginComponentState extends State<LoginComponent> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Image.asset("assets/icons/login.png"),
                const Text("Shop App"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Login:",
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Email:"),
                TextField(
                  onChanged: (value) => email = value,
                ),
                (widget.error != null)
                    ? const Text("Email Not Valid!",
                        style: TextStyle(
                          color: Colors.red,
                        ))
                    : const Text(""),
                const SizedBox(
                  height: 10,
                ),
                const Text("Password:"),
                TextField(
                  obscureText: true,
                  onChanged: (value) => password = value,
                ),
                (widget.error != null)
                    ? const Text("Password Not Valid!",
                        style: TextStyle(
                          color: Colors.red,
                        ))
                    : const Text(""),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 50,
                      ))),
                      onPressed: () {
                        BlocProvider.of<UserCubit>(context)
                            .login(email, password);
                      },
                      child: const Text("Login"),
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have account? "),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: const Text("sign up!"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
