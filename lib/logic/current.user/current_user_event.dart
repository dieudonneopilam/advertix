part of 'current_user_bloc.dart';

sealed class CurrentUserEvent extends Equatable {
  const CurrentUserEvent();

  @override
  List<Object> get props => [];
}

final class OnCreatedUser extends CurrentUserEvent {
  final Map json;

  const OnCreatedUser({required this.json});
}
