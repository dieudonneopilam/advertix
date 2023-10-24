import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'validation_field_event.dart';
part 'validation_field_state.dart';

class ValidationFieldBloc
    extends Bloc<ValidationFieldEvent, ValidationFieldState> {
  ValidationFieldBloc() : super(const ValidationFieldInitial()) {
    on<ValidationFieldEvent>((event, emit) {});
  }
}
