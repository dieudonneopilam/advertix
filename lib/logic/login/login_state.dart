part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {
  final String email;
  final String password;
  final EtatField etatemail;
  final EtatField etatpassword;
  final EtatRequest etatRequest;
  const LoginInitial({
    this.email = '',
    this.password = '',
    this.etatemail = EtatField.none,
    this.etatpassword = EtatField.none,
    this.etatRequest = EtatRequest.none,
  });
  LoginInitial copywith(
      {String? email,
      String? password,
      EtatField? etatemail,
      EtatField? etatpassword,
      EtatRequest? etatRequest}) {
    return LoginInitial(
      email: email ?? this.email,
      password: password ?? this.password,
      etatRequest: etatRequest ?? this.etatRequest,
      etatemail: etatemail ?? this.etatemail,
      etatpassword: etatpassword ?? this.etatpassword,
    );
  }

  @override
  List<Object> get props =>
      [email, password, etatemail, etatpassword, etatRequest];
}
