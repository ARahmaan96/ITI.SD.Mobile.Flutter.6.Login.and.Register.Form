import 'package:account_app/cubit/user_cubit.dart';
import 'package:account_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileComponet extends StatelessWidget {
  final User user;
  const ProfileComponet({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Profile",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(child: Image.asset("assets/icons/default-user.png")),
            Text("Name: ${user.name}"),
            Text("Eamil: ${user.email}"),
            Text("Age: ${user.age}"),
            Text("Address: ${user.address}"),
            Text("Phone: ${user.phone}"),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 50,
                  ))),
                  onPressed: () {
                    BlocProvider.of<UserCubit>(context).logout();
                  },
                  child: const Text("Logout"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
