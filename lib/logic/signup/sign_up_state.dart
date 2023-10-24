part of 'sign_up_bloc.dart';

sealed class SignUpState extends Equatable {
  const SignUpState();

  @override
  List<Object> get props => [];
}

final class SignUpInitial extends SignUpState {
  final String email;
  final String password;
  final String nom;
  final String prenom;
  final String postnom;
  final EtatField etatemail;
  final EtatField etatpassword;
  final EtatRequest etatRequest;
  final EtatField etatprenom;
  final EtatField etatnom;
  final EtatField etatpostnom;
  final String confirmed;
  final EtatField etatconfirmed;
  const SignUpInitial(
      {this.email = '',
      this.password = '',
      this.etatconfirmed = EtatField.none,
      this.confirmed = '',
      this.etatemail = EtatField.none,
      this.etatpassword = EtatField.none,
      this.etatRequest = EtatRequest.none,
      this.etatnom = EtatField.none,
      this.etatprenom = EtatField.none,
      this.etatpostnom = EtatField.none,
      this.nom = '',
      this.postnom = '',
      this.prenom = ''});
  SignUpInitial copywith({
    String? email,
    String? password,
    String? nom,
    EtatField? etatconfirmed,
    String? confirmed,
    String? prenom,
    String? postnom,
    EtatField? etatemail,
    EtatField? etatnom,
    EtatField? etatprenom,
    EtatField? etatpostnom,
    EtatField? etatpassword,
    EtatRequest? etatRequest,
  }) {
    return SignUpInitial(
      confirmed: confirmed ?? this.confirmed,
      etatconfirmed: etatconfirmed ?? this.etatconfirmed,
      email: email ?? this.email,
      password: password ?? this.password,
      etatRequest: etatRequest ?? this.etatRequest,
      etatemail: etatemail ?? this.etatemail,
      etatpassword: etatpassword ?? this.etatpassword,
      etatnom: etatnom ?? this.etatnom,
      etatpostnom: etatpostnom ?? this.etatpostnom,
      etatprenom: etatprenom ?? this.etatprenom,
      nom: nom ?? this.nom,
      postnom: postnom ?? this.postnom,
      prenom: prenom ?? this.prenom,
    );
  }

  @override
  List<Object> get props => [
        email,
        password,
        etatemail,
        etatpassword,
        etatRequest,
        nom,
        etatnom,
        prenom,
        etatprenom,
        postnom,
        etatpostnom,
        confirmed,
        etatconfirmed
      ];
}
