part of 'login_select_bloc.dart';

sealed class LoginSelectEvent extends Equatable {
  const LoginSelectEvent();

  @override
  List<Object> get props => [];
}

class OnSwitch extends LoginSelectEvent {
  final int index;

  const OnSwitch({required this.index});
}
