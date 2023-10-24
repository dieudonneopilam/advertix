import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'current_user_event.dart';
part 'current_user_state.dart';

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {
  CurrentUserBloc()
      : super(const CurrentUserInitial(
            id: '', firstName: '', lastName: '', email: '', token: '')) {
    on<OnCreatedUser>((event, emit) {
      emit((state as CurrentUserInitial).copywith(
          email: event.json['email'],
          firstName: event.json['firstName'],
          id: event.json['_id'],
          lastName: event.json['lastName'],
          token: event.json['token']));
    });
  }
}
