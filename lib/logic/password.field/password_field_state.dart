part of 'password_field_bloc.dart';

sealed class PasswordFieldState extends Equatable {
  const PasswordFieldState();

  @override
  List<Object> get props => [];
}

final class PasswordFieldInitial extends PasswordFieldState {
  final bool isOpen1;
  final bool isOpen2;
  final bool isOpen3;
  final bool isOpen4;
  const PasswordFieldInitial({
    this.isOpen1 = true,
    this.isOpen2 = true,
    this.isOpen3 = true,
    this.isOpen4 = true,
  });
  PasswordFieldInitial copywith(
      {bool? isOpen1, bool? isOpen2, bool? isOpen3, bool? isOpen4}) {
    return PasswordFieldInitial(
      isOpen1: isOpen1 ?? this.isOpen1,
      isOpen2: isOpen2 ?? this.isOpen2,
      isOpen3: isOpen3 ?? this.isOpen3,
      isOpen4: isOpen4 ?? this.isOpen4,
    );
  }

  @override
  List<Object> get props => [isOpen2, isOpen1, isOpen3, isOpen4];
}
