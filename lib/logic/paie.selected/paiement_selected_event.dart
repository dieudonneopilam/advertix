part of 'paiement_selected_bloc.dart';

sealed class PaiementSelectedEvent extends Equatable {
  const PaiementSelectedEvent();

  @override
  List<Object> get props => [];
}

class OnChangePaiement extends PaiementSelectedEvent {
  final int paimentSelected;
  const OnChangePaiement({required this.paimentSelected});
}
