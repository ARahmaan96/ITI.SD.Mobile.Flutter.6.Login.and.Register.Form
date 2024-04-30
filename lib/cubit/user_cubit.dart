import 'package:account_app/models/user.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

// Save to SQLite Or Use Dio to Save to the Server Instet, this is just a placeholder. 🙄
// TODO: Vlidation
User? user;

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const NoUser());

  Future<void> login(String email, String password) async {
    try {
      emit(const Loading());
      // simulate logging in
      await Future.delayed(const Duration(seconds: 2));
      if (user == null) {
        return emit(const LoggingFailed());
      } else if (user!.email == email && user!.password == password) {
        return emit(LoggedIn(user!.getPublic()));
      }
      emit(const LoggingFailed());
    } catch (err) {
      print(err);
      emit(const Error());
    }
  }

  Future<void> logout() async {
    try {
      emit(const Loading());
      // simulate logging out
      await Future.delayed(const Duration(seconds: 2));
      emit(const NoUser());
    } catch (err) {
      emit(const Error());
    }
  }

  Future<void> register(user_) async {
    try {
      emit(const Loading());
      await Future.delayed(const Duration(seconds: 5));
      user = user_;
      emit(LoggedIn(user!.getPublic()));
    } catch (err) {
      emit(const Error());
    }
  }
}
