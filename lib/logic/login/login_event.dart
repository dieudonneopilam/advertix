part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class ValidationEmailPassword extends LoginEvent {
  final String email;
  final String password;
  final BuildContext context;
  const ValidationEmailPassword(
      {required this.context, required this.email, required this.password});
}

class OnChangedField extends LoginEvent {
  final String email;
  final String password;
  final BuildContext context;
  const OnChangedField(
      {required this.context, required this.email, required this.password});
}
