part of 'login_select_bloc.dart';

sealed class LoginSelectState extends Equatable {
  const LoginSelectState();

  @override
  List<Object> get props => [];
}

final class LoginSelectInitial extends LoginSelectState {
  final int index;
  const LoginSelectInitial({required this.index});
  @override
  List<Object> get props => [index];
}
