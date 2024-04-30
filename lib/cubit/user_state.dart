part of 'user_cubit.dart';

@immutable
sealed class UserState {
  const UserState();
}

final class NoUser extends UserState {
  const NoUser();
}

final class Loading extends UserState {
  const Loading();
}

final class Error extends UserState {
  const Error();
}

final class LoggingFailed extends UserState {
  const LoggingFailed();
}

final class LoggedIn extends UserState {
  final User user;
  const LoggedIn(this.user);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LoggedIn && other.user == user;
  }

  @override
  int get hashCode => user.hashCode;
}
