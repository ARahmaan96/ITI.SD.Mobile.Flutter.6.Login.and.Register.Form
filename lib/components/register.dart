import 'package:account_app/consts.dart';
import 'package:account_app/cubit/user_cubit.dart';
import 'package:account_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// TODO: Vlidation

class RegisterComponent extends StatefulWidget {
  const RegisterComponent({super.key});

  @override
  State<RegisterComponent> createState() => _RegisterComponentState();
}

class _RegisterComponentState extends State<RegisterComponent> {
  User user = User();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Image.asset("assets/icons/default-user.png"),
                      const Text("Shop App"),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Register:",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Text("Name:"),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15, top: 5),
                      child: TextField(
                        onChanged: (value) => user.name = value,
                        style: primaryTextStyle,
                        decoration: primaryTextDecoration,
                      ),
                    ),
                    const Text("Email:"),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15, top: 5),
                      child: TextField(
                        onChanged: (value) => user.email = value,
                        style: primaryTextStyle,
                        decoration: primaryTextDecoration,
                      ),
                    ),
                    const Text("Password:"),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15, top: 5),
                      child: TextField(
                        onChanged: (value) => user.password = value,
                        style: primaryTextStyle,
                        decoration: primaryTextDecoration,
                      ),
                    ),
                    const Text("Confirm Password:"),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15, top: 5),
                      child: TextField(
                        onChanged: (value) => {},
                        style: primaryTextStyle,
                        decoration: primaryTextDecoration,
                      ),
                    ),
                    const Text("Age:"),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15, top: 5),
                      child: TextField(
                        onChanged: (value) => user.age = value,
                        style: primaryTextStyle,
                        decoration: primaryTextDecoration,
                      ),
                    ),
                    const Text("Address:"),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15, top: 5),
                      child: TextField(
                        onChanged: (value) => user.address = value,
                        style: primaryTextStyle,
                        decoration: primaryTextDecoration,
                      ),
                    ),
                    const Text("Phone:"),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15, top: 5),
                      child: TextField(
                        onChanged: (value) => user.phone = value,
                        keyboardType: TextInputType.phone,
                        style: primaryTextStyle,
                        decoration: primaryTextDecoration,
                      ),
                    ),
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
                            BlocProvider.of<UserCubit>(context).register(user);
                            Navigator.pop(context);
                          },
                          child: const Text("Register"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
