part of 'password_field_bloc.dart';

sealed class PasswordFieldEvent extends Equatable {
  const PasswordFieldEvent();

  @override
  List<Object> get props => [];
}

class ToggleFiel1 extends PasswordFieldEvent {}

class ToggleFiel2 extends PasswordFieldEvent {}

class ToggleFiel3 extends PasswordFieldEvent {}

class ToggleFiel4 extends PasswordFieldEvent {}
