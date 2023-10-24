part of 'current_user_bloc.dart';

sealed class CurrentUserState extends Equatable {
  const CurrentUserState();

  @override
  List<Object> get props => [];
}

final class CurrentUserInitial extends CurrentUserState {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String token;
  const CurrentUserInitial({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.token,
  });
  CurrentUserInitial copywith(
      {String? id,
      String? firstName,
      String? lastName,
      String? token,
      String? email}) {
    return CurrentUserInitial(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      token: token ?? this.token,
    );
  }

  @override
  List<Object> get props => [id, firstName, lastName, email, token];
}
