import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'paiement_selected_event.dart';
part 'paiement_selected_state.dart';

class PaiementSelectedBloc
    extends Bloc<PaiementSelectedEvent, PaiementSelectedState> {
  PaiementSelectedBloc()
      : super(const PaiementSelectedInitial(paimentSelected: 0)) {
    on<OnChangePaiement>((event, emit) {
      emit(PaiementSelectedInitial(paimentSelected: event.paimentSelected));
    });
  }
}
