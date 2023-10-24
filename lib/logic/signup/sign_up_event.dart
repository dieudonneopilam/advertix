part of 'sign_up_bloc.dart';

sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class ValidatedSignUp extends SignUpEvent {
  final String email;
  final String password;
  final String nom;
  final BuildContext context;
  final String prenom;
  final String confirmed;
  const ValidatedSignUp({
    required this.context,
    required this.email,
    required this.password,
    required this.confirmed,
    required this.nom,
    required this.prenom,
  });
}

class OnChangedField extends SignUpEvent {
  final String email;
  final String password;
  final String nom;
  final String prenom;
  final String confirmed;
  const OnChangedField({
    required this.email,
    required this.password,
    required this.confirmed,
    required this.nom,
    required this.prenom,
  });
}
