part of 'validation_field_bloc.dart';

sealed class ValidationFieldEvent extends Equatable {
  const ValidationFieldEvent();

  @override
  List<Object> get props => [];
}

class OnValideted extends ValidationFieldEvent {}
