part of 'validation_field_bloc.dart';

sealed class ValidationFieldState extends Equatable {
  const ValidationFieldState();

  @override
  List<Object> get props => [];
}

enum EtatField { valid, invalid, none }

final class ValidationFieldInitial extends ValidationFieldState {
  final EtatField field1;
  final EtatField field2;
  final EtatField field3;
  final EtatField field4;
  final EtatField field5;
  final EtatField field6;
  final EtatField field7;
  final EtatField field8;
  final EtatField field9;
  final EtatField field10;
  const ValidationFieldInitial({
    this.field1 = EtatField.none,
    this.field2 = EtatField.none,
    this.field3 = EtatField.none,
    this.field4 = EtatField.none,
    this.field5 = EtatField.none,
    this.field6 = EtatField.none,
    this.field7 = EtatField.none,
    this.field8 = EtatField.none,
    this.field9 = EtatField.none,
    this.field10 = EtatField.none,
  });
  ValidationFieldInitial copywith({
    EtatField? field1,
    EtatField? field2,
    EtatField? field3,
    EtatField? field4,
    EtatField? field5,
    EtatField? field6,
    EtatField? field7,
    EtatField? field8,
    EtatField? field9,
    EtatField? field10,
  }) {
    return ValidationFieldInitial(
      field1: field1 ?? this.field1,
      field2: field2 ?? this.field2,
      field3: field3 ?? this.field3,
      field4: field4 ?? this.field4,
      field5: field5 ?? this.field5,
      field6: field6 ?? this.field6,
      field7: field7 ?? this.field7,
      field8: field8 ?? this.field8,
      field9: field9 ?? this.field9,
      field10: field10 ?? this.field10,
    );
  }

  @override
  List<Object> get props => [field1, field2, field3, field4, field5];
}
